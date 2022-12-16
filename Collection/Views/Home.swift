//
//  Home.swift
//  Collection
//
//  Created by Frédéric Fréville on 15/12/2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            VStack{
                HStack {
                    NavigationLink(destination: CollectionList(person: 2)) {
                        HomeButtonGwen()
                    }
                }
                Spacer()
                Divider()
                Spacer()
                HStack {
                    NavigationLink(destination: CollectionList(person: 1)) {
                        HomeButtonFred()
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
