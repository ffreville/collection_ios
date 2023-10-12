import SwiftUI
import ObjectBox

@main
struct CollectionApp: App {
    
    
    var body: some Scene {
        let store = try! Store(directoryPath: "/Users/frederic/Documents/mydatabase/")
        WindowGroup {
            ContentView(store: store)
        }
    }
}
