//
//  ItemList.swift
//  Collection
//
//  Created by Frédéric Fréville on 05/12/2022.
//

import SwiftUI

struct ItemList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredItems: [Item] {
        modelData.items.filter{ item in
            (!showFavoritesOnly || item.isFavourite)
            
        }
    }
    var body: some View {

            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredItems) { item in
                    NavigationLink {
                        ItemDetail(item: item)
                    } label: {
                        ItemRow(item: item)
                    }
                }
            }
            .navigationTitle("Items")

    }
}

struct ItemList_Previews: PreviewProvider {
    static var previews: some View {
        ItemList().environmentObject(ModelData())
    }
}
