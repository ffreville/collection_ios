//
//  ItemDetail.swift
//  Collection
//
//  Created by Frédéric Fréville on 05/12/2022.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var modelData: ModelData
    
    var item: Item
    
    var itemIndex: Int {
        modelData.items.firstIndex(where: { $0.id == item.id })!
    }
    
    var body: some View {
        ScrollView {
            CircleImage(image: item.image,
            width: 340, height: 340)
            VStack(alignment: .leading) {
                HStack {
                    Text(item.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.items[itemIndex].isFavourite)
                }
                HStack {
                    Text("La premiere")
                        .font(.subheadline)
                    Spacer()
                    Text("Edition limitée")
                }
                
                Divider()
                Text("Description de la statue")
            }
            .padding()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        ItemDetail(item: modelData.items[0])
            .environmentObject(modelData)
    }
}
