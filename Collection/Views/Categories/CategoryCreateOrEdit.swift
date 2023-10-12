import SwiftUI
import ObjectBox

struct CategoryCreateOrEdit: View {
    var store: Store
    @State var category : Category
    
    var body: some View {
        Form {
            Section(header: Text("Informations obligatoires")){
                TextField("Nom : ", text: $category.name)
            }

            Section(){
                Button(action:{
                    saveCategory()
                }) {
                    Text("Enregistrer")
                }
            }
            
        }
        .navigationBarTitle("Ajout d'une catégorie")
    }
    
    func saveCategory() {
        if(category.name != ""){
            CategoryRepository().aaveCategory(store: store, category: category)
            print("Save item ; "+category.name)
        }
    }
    
}

struct CategoryCreateOrEdit_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCreateOrEdit(store: try! Store(directoryPath: ""), category: Category())
    }
}
