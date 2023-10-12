import Foundation
import ObjectBox

class CategoryRepository {
    
    func getItemCategories(store: Store, item: Item ) -> [ItemCategory] {
        let itemCategoryBox = store.box(for: ItemCategory.self)
        let query: Query<ItemCategory> = try! itemCategoryBox.query {
            ItemCategory.item.isEqual(to: item.id)
        }.build()
        return try! query.find()
    }
    
    func saveItemCategory(store: Store, itemCategory: ItemCategory) {
        let itemCategoryBox = store.box(for: ItemCategory.self)
        try! itemCategoryBox.put(itemCategory)
    }
    
    func deleteItemCategory(store: Store, id: Id) {
        let itemCategoryBox = store.box(for: ItemCategory.self)
        try! itemCategoryBox.remove(id)
    }
    
    func getCollectionCategories(store: Store, collection: Collection ) -> [CollectionCategory] {
        let collectionCategoryBox = store.box(for: CollectionCategory.self)
        let query: Query<CollectionCategory> = try! collectionCategoryBox.query {
            CollectionCategory.collection.isEqual(to: collection.id)
        }.build()
        return try! query.find()
    }
    
    func saveCollectionCategory(store: Store, collectionCategory: CollectionCategory) {
        let collectionCategoryBox = store.box(for: CollectionCategory.self)
        try! collectionCategoryBox.put(collectionCategory)
    }
    
    func deleteCollectionCategory(store: Store, id: Id) {
        let collectionCategoryBox = store.box(for: CollectionCategory.self)
        try! collectionCategoryBox.remove(id)
    }
    
    func getCategories(store: Store, user: Int ) -> [Category] {
        let categoryBox = store.box(for: Category.self)
        let query: Query<Category> = try! categoryBox.query {
            Category.person == user
        }.build()
        return try! query.find()
    }
    
    func aaveCategory(store: Store, category: Category) {
        let categoryBox = store.box(for: Category.self)
        try! categoryBox.put(category)
    }
    
    func deleteCateory(store: Store, category: Category) {
        let categoryBox = store.box(for: Category.self)
        try! categoryBox.remove(category.id)
    }
}
