//
//  CollectionList.swift
//  Collection
//
//  Created by Frédéric Fréville on 15/12/2022.
//

import SwiftUI
import ObjectBox

struct CollectionList: View {
    var store: Store
    var person : Int
    
    @StateObject var model: DataModel
    
    @State private var collections : [Collection] = []
    
    var body: some View {
        VStack {
            
            HStack {
                Spacer()
                NavigationLink {
                    CollectionCreateOrEdit(store: store, person: person, collection: Collection())
                } label: {
                    AddButtonView(text: "Ajouter une collection")
                }
                Spacer()
                NavigationLink {
                    CategoryList(store: store, person: person)
                } label: {
                    AddButtonView(text: "Gérer les catégories")
                }
                Spacer()
            }
           
            List(collections) { collection in
                VStack {
                    CollectionRow(store: store, collection: collection, person: person, model: model)
                }
            }
            .refreshable {
                collections = CollectionRepository().getCollections(store: store, user: person)
            }
        }.onAppear(perform: {
            collections = CollectionRepository().getCollections(store: store, user: person)
        })
        
    }
}

struct CollectionList_Previews: PreviewProvider {
    static var previews: some View {
        CollectionList(store: try! Store(directoryPath: ""), person: 1, model: DataModel())
    }
}
