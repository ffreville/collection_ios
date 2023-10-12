//
//  CollectionDetail.swift
//  Collection
//
//  Created by Frédéric Fréville on 15/12/2022.
//

import SwiftUI
import ObjectBox

struct CollectionDetail: View {
    var store: Store
    @ObservedObject var collection: Collection
    var person : Int
    
    @StateObject var model: DataModel
    
    @State private var items : [Item] = []
    
    @State private var collectionCategories : [CollectionCategory] = []
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                NavigationLink {
                    ItemCreateOrEdit(store: store, collection: collection, item: Item(), person: person, model: model)
                } label: {
                    AddButtonView(text: "Ajouter un objet")
                }
                Spacer()
                NavigationLink {
                    CategoryList(store: store, person: collection.person)
                } label: {
                    AddButtonView(text: "Gérer les catégories")
                }
                Spacer()
                NavigationLink {
                    CollectionCreateOrEdit(store: store, person: collection.person, collection: collection)
                } label: {
                    AddButtonView(text: "Editer la collection")
                }
                Spacer()
            }
            Divider()
            HStack {
                Text("Catégories : ")
                ForEach(collectionCategories) { collectionCategory in
                    if let name = collectionCategory.category.target?.name {
                        Text(name).font(.subheadline)
                    }
                    
                }
            }.navigationTitle(collection.name)
            
            Divider()
            List(items) { item in
                VStack {
                    ItemRow(store: store, collection: collection, item: item, person: person, model: model)
                }
            }
            .refreshable {
                items = ItemRepository().getItems(store: store, collection: collection)
                collectionCategories = CategoryRepository().getCollectionCategories(store: store, collection: collection)
            }
            
        }.onAppear(perform: {
            items = ItemRepository().getItems(store: store, collection: collection)
            collectionCategories = CategoryRepository().getCollectionCategories(store: store, collection: collection)
        })
    
    } 
    
}

struct CollectionDetail_Previews: PreviewProvider {
    static var previews: some View {
        CollectionDetail(store: try! Store(directoryPath: ""), collection: Collection(), person: 2, model: DataModel())
    }
}
 
