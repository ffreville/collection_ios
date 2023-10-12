import Foundation
import ObjectBox

class CollectionCategory: Entity, Identifiable, ObservableObject{
    var id: Id = 0
    var person: Int = 2
    var category: ToOne<Category> = nil
    var collection: ToOne<Collection> = nil
}
