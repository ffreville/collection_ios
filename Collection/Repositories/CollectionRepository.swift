import Foundation
import ObjectBox

class CollectionRepository {
    
    func getCollections(store: Store, user: Int ) -> [Collection] {
        let collectionBox = store.box(for: Collection.self)
        let query: Query<Collection> = try! collectionBox.query {
            Collection.person == user
        }.build()
        return try! query.find()
    }
    
    func saveCollection(store: Store, collection: Collection) {
        let collectionBox = store.box(for: Collection.self)
        try! collectionBox.put(collection)
    }
}
