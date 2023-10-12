import Foundation
import SwiftUI
import ObjectBox

class Collection: Entity, Identifiable, ObservableObject {
    var id: Id = 0
    var person: Int = 2
    @Published var name: String = ""

}
