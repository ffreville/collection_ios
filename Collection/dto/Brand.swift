import Foundation
import ObjectBox

class Brand: Entity, Identifiable, ObservableObject  {
    var id: Id = 0
    @Published var name: String = ""
}
