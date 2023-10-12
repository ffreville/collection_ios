//
//  CollectionRow.swift
//  Collection
//
//  Created by Frédéric Fréville on 15/12/2022.
//

import SwiftUI
import ObjectBox

struct CollectionRow: View {
    var store: Store
    var collection: Collection
    var person : Int
    
    @StateObject var model: DataModel
    
    var body: some View {
        NavigationLink {
            CollectionDetail(store: store, collection: collection, person: person,model: model)
        } label: {
            Text(collection.name)
        }
    }
}

struct CollectionRow_Previews: PreviewProvider {
    static var previews: some View {
        CollectionRow(store: try! Store(directoryPath: ""), collection: Collection(), person: 2, model: DataModel())
    }
}
