//
//  ContentView.swift
//  Collection
//
//  Created by Frédéric Fréville on 14/11/2022.
//

import SwiftUI
import ObjectBox

struct ContentView: View {
    var store: Store
    var body: some View {
        Home(store: store)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: try! Store(directoryPath: ""))
    }
}
