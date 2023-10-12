import Foundation
import ObjectBox

class ItemRepository {
    
    func getItems(store: Store, collection: Collection) -> [Item] {
        let itemBox = store.box(for: Item.self)
        let query: Query<Item> = try! itemBox.query {
            Item.collection.isEqual(to: collection.id)
        }.build()
        return try! query.find()
    }
    
    func saveItem(store: Store, item: Item) {
        let itemBox = store.box(for: Item.self)
        try! itemBox.put(item)
    }
}

