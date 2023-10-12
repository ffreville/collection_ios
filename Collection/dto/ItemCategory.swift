import Foundation
import ObjectBox

class ItemCategory: Entity, Identifiable, ObservableObject{
    var id: Id = 0
    var person: Int = 2
    var category: ToOne<Category> = nil
    var item: ToOne<Item> = nil
}
