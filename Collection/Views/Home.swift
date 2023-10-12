//
//  Home.swift
//  Collection
//
//  Created by Frédéric Fréville on 15/12/2022.
//

import SwiftUI
import ObjectBox
import AVFoundation

struct Home: View {
    var store: Store
    @StateObject private var model = DataModel()
    
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                HStack {
                    NavigationLink(destination: CollectionList(store: store, person: 2, model: model)) {
                        HomeButtonGwen()
                    }
                }
                Spacer()
                Divider()
                Spacer()
                HStack {
                    NavigationLink(destination: CollectionList(store: store, person: 1, model: model)) {
                        HomeButtonFred()
                    }
                }
                Spacer()
            }
        }
        .task {
            //await model.camera.start()
            //await model.loadPhotos()
            //await model.loadThumbnail()
        }
        .navigationViewStyle(.stack)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(store: try! Store(directoryPath: ""))
    }
}
