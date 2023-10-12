import Foundation
import ObjectBox

class InfoRepository {
    func getItemInfos(store: Store, item: Item ) -> [ItemInfo] {
        let itemInfoBox = store.box(for: ItemInfo.self)
        let query: Query<ItemInfo> = try! itemInfoBox.query {
            ItemInfo.item.isEqual(to: item.id)
        }.build()
        return try! query.find()
    }
    
    func saveItemInfo(store: Store, itemInfo: ItemInfo) {
        let itemInfoBox = store.box(for: ItemInfo.self)
        try! itemInfoBox.put(itemInfo)
    }
    
    func getCollectionInfos(store: Store, collection: Collection ) -> [CollectionInfo] {
        let collectionInfoBox = store.box(for: CollectionInfo.self)
        let query: Query<CollectionInfo> = try! collectionInfoBox.query {
            CollectionInfo.collection.isEqual(to: collection.id)
        }.build()
        return try! query.find()
    }
    
    func saveCollectionInfo(store: Store, collectionInfo: CollectionInfo) {
        let collectionInfoBox = store.box(for: CollectionInfo.self)
        try! collectionInfoBox.put(collectionInfo)
    }
}
