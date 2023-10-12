import Foundation
import ObjectBox

class CategoryItem: Entity, Identifiable, ObservableObject{
    var id: Id = 0
    var category: ToOne<Category> = nil
    var item: ToOne<Item> = nil
}
