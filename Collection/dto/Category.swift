import Foundation
import ObjectBox

class Category: Entity, Identifiable, ObservableObject, Hashable, Equatable{
    var id: Id = 0
    var person: Int = 2
    @Published var name: String = ""
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }
    
    static func ==(lhs: Category, rhs: Category) -> Bool {

        return lhs.name == rhs.name
    }

}
