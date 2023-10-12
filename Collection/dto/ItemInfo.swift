import Foundation
import ObjectBox

class ItemInfo: Entity, Identifiable, ObservableObject{
    var id: Id = 0
    @Published var name: String = ""
    @Published var value: String = ""
    var item: ToOne<Item> = nil
    
    init(name: String, itemToAdd: Item) {
        self.name = name
        self.item.target = itemToAdd
    }
    
    init() {
        
    }
}
