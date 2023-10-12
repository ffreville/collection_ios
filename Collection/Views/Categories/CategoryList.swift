import SwiftUI
import ObjectBox

struct CategoryList: View {
    var store: Store
    var person : Int
    
    @State private var categories : [Category] = []
    
    var body: some View {
        VStack {
            
            HStack {
                NavigationLink {
                    CategoryCreateOrEdit(store: store, category: Category())
                } label: {
                    AddButtonView(text: "Ajouter une catégorie")
                }
            }
            
            List(categories) { category in
                VStack {
                    NavigationLink {
                        CategoryCreateOrEdit(store: store, category: category)
                    } label: {
                        Text(category.name)
                    }
                
                }
            }
            .refreshable {
                categories = CategoryRepository().getCategories(store: store, user: person)
            }
        }.onAppear(perform: {
            categories = CategoryRepository().getCategories(store: store, user: person)
        })
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList(store: try! Store(directoryPath: ""), person: 1)
    }
}
