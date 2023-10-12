import Foundation
import ObjectBox

class CategoryCollection: Entity, Identifiable, ObservableObject{
    var id: Id = 0
    var category: ToOne<Category> = nil
    var collection: ToOne<Collection> = nil
}
