import SwiftUI
import ObjectBox

struct ItemCreateOrEdit: View {
    var store: Store
    var collection : Collection
    @State var item : Item
    var person : Int
    
    @StateObject var model: DataModel
    
    @State private var categories : [Category] = []
    @State private var itemCategories : [ItemCategory] = []
    @State private var selectedCategories  = [Category: Bool]()
    @State private var idCategoriesSaved : [Id] = []
    @State private var infos : [ItemInfo] = []
    
    @State private var uiImage: UIImage? = nil
    

    func binding(for key: Category) -> Binding<Bool> {
        return Binding(get: {
            return self.selectedCategories[key] ?? false
        }, set: {
            self.selectedCategories[key] = $0
        })
    }
    
    func bindingInfoName(for key: Int) -> Binding<String> {
        return Binding(get: {
            return self.infos[key].name
        }, set: {
            self.infos[key].name = $0
        })
    }
    
    func bindingInfoValue(for key: Int) -> Binding<String> {
        return Binding(get: {
            return self.infos[key].value
        }, set: {
            self.infos[key].value = $0
        })
    }
    
    
    var body: some View {
        Form {
            Section(header: Text("Informations obligatoires")){
                TextField("Nom de l'item : ", text: $item.name)
            }
            List{
                ForEach(Array(selectedCategories.keys.enumerated()), id:\.element) { _, key in
                    HStack {
                        Toggle(key.name, isOn:  self.binding(for: key))
                    }
                }
            }.refreshable {
                self.loadCategories()
            }
            
            Section(header: Text("Informations à renseigner")){
                ForEach(infos.indices,  id: \.self) { index in
                    HStack {
                        TextField("", text:  self.bindingInfoName(for: index))
                        TextField("", text:  self.bindingInfoValue(for: index))
                    }
                }
                Button(action:{
                    self.addInfo()
                }) {
                    Text("Ajouter une information")
                }
            }
            
            if(uiImage != nil){
                Image(uiImage: uiImage!)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(6)
            }
            
                
            NavigationLink {
                ImagePickerView(selectedImage:self.$uiImage, sourceType: .photoLibrary)
            }  label: {
                AddButtonView(text: "Changer l'image")
            }
            
            Section(){
                Button(action:{
                    self.saveItem()
                }) {
                    Text("Enregistrer")
                }
            }
            
        }
        .navigationBarTitle("Ajout d'un item")
        .onAppear(perform: {
            self.loadCategories()
            self.loadInfos()
        })
        
    }
    
    func addInfo() {
        infos.append(ItemInfo())
    }
    
    func loadCategories() {
        categories = CategoryRepository().getCategories(store: store, user: collection.person)
        itemCategories = CategoryRepository().getItemCategories(store: store, item: item)
        idCategoriesSaved = []
        selectedCategories = [Category: Bool]()
        for category in categories {
            selectedCategories[category] = false
        }
        for itemCategory in itemCategories {
            selectedCategories[itemCategory.category.target!] = true
            if let id=itemCategory.category.target?.id {
                idCategoriesSaved.append(id)
            }
        }
    }
    
    func loadInfos(){
        if item.name != "" {
            print("Edit mode")
            infos = InfoRepository().getItemInfos(store: store, item: item)
        } else {
            print("Add mode")
            let collectionInfos = InfoRepository().getCollectionInfos(store: store, collection: collection)
            collectionInfos.forEach { collectionInfo in
                infos.append(ItemInfo(name: collectionInfo.name, itemToAdd: item))
            }
        }
    }

    func saveImage(imageName: String, image: UIImage) {


     guard let documentsDirectory = FileManager.default.urls(for: .downloadsDirectory, in: .userDomainMask).first else { return }

        let fileName = imageName
        let fileURL = documentsDirectory.appendingPathComponent(fileName)
        guard let data = image.jpegData(compressionQuality: 1) else { return }

        //Checks if file exists, removes it if so.
        if FileManager.default.fileExists(atPath: fileURL.path) {
            do {
                try FileManager.default.removeItem(atPath: fileURL.path)
                print("Removed old image")
            } catch let removeError {
                print("couldn't remove file at path", removeError)
            }

        }

        do {
            try data.write(to: fileURL)
            print(fileURL)
        } catch let error {
            print("error saving file with error", error)
        }

    }



    func loadImageFromDiskWith(fileName: String) -> UIImage? {

      let documentDirectory = FileManager.SearchPathDirectory.documentDirectory

        let userDomainMask = FileManager.SearchPathDomainMask.userDomainMask
        let paths = NSSearchPathForDirectoriesInDomains(documentDirectory, userDomainMask, true)

        if let dirPath = paths.first {
            let imageUrl = URL(fileURLWithPath: dirPath).appendingPathComponent(fileName)
            let image = UIImage(contentsOfFile: imageUrl.path)
            return image

        }

        return nil
    }

    func saveLoadInfos(){
        infos.forEach { info in
            info.item.target = item
            InfoRepository().saveItemInfo(store: store, itemInfo: info)
        }
    }

    func saveItem() {
        if(uiImage != nil){
            print("Try to save image")
            saveImage(imageName: "test.png", image: uiImage!)
        }
        if(item.name != ""){
            item.collection.target = collection
            ItemRepository().saveItem(store: store, item: item)
            
            selectedCategories.forEach { selectedCategory in
                if selectedCategory.value {
                    if idCategoriesSaved.contains(selectedCategory.key.id){
                        if let index = idCategoriesSaved.firstIndex(of: selectedCategory.key.id){
                            print("Category already in bdd, remove from idCategoriesSaved ; "+selectedCategory.key.name)
                            idCategoriesSaved.remove(at: index)
                        }
                    } else {
                        print("Category not in bdd "+selectedCategory.key.name)
                        let itemCategory : ItemCategory = ItemCategory()
                        itemCategory.person = person
                        itemCategory.category.target = selectedCategory.key
                        itemCategory.item.target = item
                        CategoryRepository().saveItemCategory(store: store, itemCategory: itemCategory)
                    }
                }
            }
            
            idCategoriesSaved.forEach { id in
                print("Remove itemCanteogry in bd ")
                CategoryRepository().deleteItemCategory(store: store, id: id)
            }
            
            saveLoadInfos()
            print("Save item ; "+item.name)
        }
    }
}

struct ItemCreateOrEdit_Previews: PreviewProvider {
    static var previews: some View {
        ItemCreateOrEdit(store: try! Store(directoryPath: ""), collection: Collection(), item: Item(), person: 2, model: DataModel())
    }
}
