import Foundation
import SwiftUI
import ObjectBox

class Item: Entity, Identifiable, ObservableObject{
    var id: Id = 0
    @Published var name: String = ""
    var collection: ToOne<Collection> = nil
    var brand: ToOne<Brand> = nil
    var imageName: String = ""
}

