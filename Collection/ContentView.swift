//
//  ContentView.swift
//  Collection
//
//  Created by Frédéric Fréville on 14/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CircleImage()
            VStack(alignment: .leading) {
                Text("Statue 1")
                    .font(.title)
                HStack {
                    Text("La premiere")
                        .font(.subheadline)
                    Spacer()
                    Text("Edition limitée")
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
