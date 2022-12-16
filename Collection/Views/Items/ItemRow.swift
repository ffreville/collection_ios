//
//  ItemRow.swift
//  Collection
//
//  Created by Frédéric Fréville on 05/12/2022.
//

import Foundation
import SwiftUI

struct ItemRow: View {
    var item: Item
    
    var body: some View {
        HStack {
            item.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(item.name)
            
            Spacer()
            
            if item.isFavourite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}


struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: ModelData().items[0])
    }
}
