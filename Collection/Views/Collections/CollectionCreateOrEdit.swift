import SwiftUI
import ObjectBox

struct CollectionCreateOrEdit: View {
    var store: Store
    var person : Int
    @State var collection: Collection
    
    @State private var categories : [Category] = []
    @State private var collectionCategories : [CollectionCategory] = []
    @State private var selectedCategories  = [Category: Bool]()
    @State private var idCategoriesSaved : [Id] = []
    @State private var infos : [CollectionInfo] = []
    
    func binding(for key: Category) -> Binding<Bool> {
        return Binding(get: {
            return self.selectedCategories[key] ?? false
        }, set: {
            self.selectedCategories[key] = $0
        })
    }
    
    func bindingInfo(for key: Int) -> Binding<String> {
        return Binding(get: {
            return self.infos[key].name
        }, set: {
            self.infos[key].name = $0
        })
    }
    
    var body: some View {
    
        Form {
            Section(header: Text("Informations obligatoires")){
                TextField(text: $collection.name, prompt: Text("Obligatoire")) {
                    Text("Nom de la collection : ")
                }
            }
            List{
                ForEach(Array(selectedCategories.keys.enumerated()), id:\.element) { _, key in
                    HStack {
                        Toggle(key.name, isOn: binding(for: key))
                    }
                }
            }.refreshable {
                loadCategories()
            }
            Section(header: Text("Informations à renseigner")){
                ForEach(infos.indices,  id: \.self) { index in
                    TextField("", text: bindingInfo(for: index))
                }
                Button(action:{
                    addInfo()
                }) {
                    Text("Ajouter une information")
                }
            }
            
            Section(){
                Button(action:{
                    saveCollection()
                }) {
                    Text("Enregistrer")
                }
            }
            
        }
        .navigationBarTitle("Ajout d'un collection")
        .onAppear(perform: {
            loadCategories()
            loadInfos()
        })
    }
    
    func addInfo() {
        infos.append(CollectionInfo())
    }
    
    func loadCategories() {
        categories = CategoryRepository().getCategories(store: store, user: collection.person)
        collectionCategories = CategoryRepository().getCollectionCategories(store: store, collection: collection)
        idCategoriesSaved = []
        selectedCategories = [Category: Bool]()
        for category in categories {
            selectedCategories[category] = false
        }
        for collectionCategory in collectionCategories {
            selectedCategories[collectionCategory.category.target!] = true
            
            idCategoriesSaved.append(collectionCategory.id)
        }
    }
    
    func loadInfos() {
        infos = InfoRepository().getCollectionInfos(store: store, collection: collection)
    }
    
    func saveInfos(){
        infos.forEach { info in
            print("Save one info")
            info.collection.target = collection
            InfoRepository().saveCollectionInfo(store: store, collectionInfo: info)
        }
    }

    func saveCollection() {
        if(collection.name != ""){
            collection.person = person
            CollectionRepository().saveCollection(store: store, collection: collection)
            
            selectedCategories.forEach { selectedCategory in
                if selectedCategory.value {
                    if idCategoriesSaved.contains(selectedCategory.key.id){
                        if let index = idCategoriesSaved.firstIndex(of: selectedCategory.key.id){
                            print("Category already in bdd, remove from idCategoriesSaved ; "+selectedCategory.key.name)
                            idCategoriesSaved.remove(at: index)
                        }
                    } else {
                        print("Category not in bdd"+selectedCategory.key.name)
                        let collectionCategory : CollectionCategory = CollectionCategory()
                        collectionCategory.person = person
                        collectionCategory.category.target = selectedCategory.key
                        collectionCategory.collection.target = collection
                        CategoryRepository().saveCollectionCategory(store: store, collectionCategory: collectionCategory)
                    }
                }
            }
            
            idCategoriesSaved.forEach { id in
                print("Remove itemCategory in bd ")
                CategoryRepository().deleteCollectionCategory(store: store, id: id)
            }
            
            saveInfos()
            
            print("Save collection ; "+collection.name)
        }
    }
    
}

struct CollectionCreateOrEdit_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCreateOrEdit(store: try! Store(directoryPath: ""), person: 2, collection: Collection())
    }
}
