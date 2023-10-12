//
//  ItemRow.swift
//  Collection
//
//  Created by Frédéric Fréville on 05/12/2022.
//

import ObjectBox
import SwiftUI

struct ItemRow: View {
    var store: Store
    var collection : Collection
    @ObservedObject var item: Item
    var person : Int
    
    @StateObject var model: DataModel
    
    var body: some View {
        NavigationLink {
            ItemDetail(store: store, collection: collection, item: item, person: person, model: model)
        } label: {
            Text(item.name)
        }
    }
}


struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(store: try! Store(directoryPath: ""), collection: Collection(), item: Item(), person: 2, model: DataModel())
    }
}
