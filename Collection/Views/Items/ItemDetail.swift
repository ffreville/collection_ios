//
//  ItemDetail.swift
//  Collection
//
//  Created by Frédéric Fréville on 05/12/2022.
//

import SwiftUI
import ObjectBox

struct ItemDetail: View {
    var store: Store
    var collection : Collection
    @ObservedObject var item: Item
    var person : Int
    @State private var itemCategories : [ItemCategory] = []
    @State private var infos : [ItemInfo] = []
    
    @StateObject var model: DataModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text(item.name)
                        .font(.title)
                    NavigationLink {
                        ItemCreateOrEdit(store: store, collection: collection,item: item, person: person, model: model)
                    } label: {
                        AddButtonView(text: "Editer")
                    }
                }
                HStack {
                    if let name = item.collection.target?.name {
                        Text(name)
                            .font(.subheadline)
                    }

                }
                Divider()
                HStack {
                    Text("Catégories : ")
                    ForEach(itemCategories) { itemCateory in
                        if let name = itemCateory.category.target?.name {
                            Text(name).font(.subheadline)
                        }
                        
                    }
                }.navigationTitle(item.name)
                
                Divider()
                
                ForEach(infos) { info in
                    Text(info.name+" : "+info.value)
                }

            }
            .padding()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: {
            itemCategories = CategoryRepository().getItemCategories(store: store, item: item)
            infos = InfoRepository().getItemInfos(store: store, item: item)
        })
    }
}

struct ItemDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        ItemDetail(store: try! Store(directoryPath: ""), collection: Collection(), item: Item(), person: 2, model: DataModel())
    }
}
