// Generated using the ObjectBox Swift Generator — https://objectbox.io
// DO NOT EDIT

// swiftlint:disable all
import ObjectBox
import Foundation

// MARK: - Entity metadata


extension Brand: ObjectBox.__EntityRelatable {
    internal typealias EntityType = Brand

    internal var _id: EntityId<Brand> {
        return EntityId<Brand>(self.id.value)
    }
}

extension Brand: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = BrandBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "Brand", id: 5)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: Brand.self, id: 5, uid: 878601022325488384)
        try entityBuilder.addProperty(name: "id", type: PropertyType.long, flags: [.id], id: 1, uid: 8240323209427215872)
        try entityBuilder.addProperty(name: "name", type: PropertyType.string, id: 2, uid: 1863563635857943552)

        try entityBuilder.lastProperty(id: 2, uid: 1863563635857943552)
    }
}

extension Brand {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { Brand.id == myId }
    internal static var id: Property<Brand, Id, Id> { return Property<Brand, Id, Id>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { Brand.name.startsWith("X") }
    internal static var name: Property<Brand, String, Void> { return Property<Brand, String, Void>(propertyId: 2, isPrimaryKey: false) }

    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.id = Id(identifier)
    }
}

extension ObjectBox.Property where E == Brand {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id == myId }

    internal static var id: Property<Brand, Id, Id> { return Property<Brand, Id, Id>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .name.startsWith("X") }

    internal static var name: Property<Brand, String, Void> { return Property<Brand, String, Void>(propertyId: 2, isPrimaryKey: false) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `Brand.EntityBindingType`.
internal class BrandBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = Brand
    internal typealias IdType = Id

    internal required init() {}

    internal func generatorBindingVersion() -> Int { 1 }

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.id.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) throws {
        let propertyOffset_name = propertyCollector.prepare(string: entity.name)

        propertyCollector.collect(id, at: 2 + 2 * 1)
        propertyCollector.collect(dataOffset: propertyOffset_name, at: 2 + 2 * 2)
    }

    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = Brand()

        entity.id = entityReader.read(at: 2 + 2 * 1)
        entity.name = entityReader.read(at: 2 + 2 * 2)

        return entity
    }
}



extension Category: ObjectBox.__EntityRelatable {
    internal typealias EntityType = Category

    internal var _id: EntityId<Category> {
        return EntityId<Category>(self.id.value)
    }
}

extension Category: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = CategoryBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "Category", id: 1)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: Category.self, id: 1, uid: 8791477938257024256)
        try entityBuilder.addProperty(name: "id", type: PropertyType.long, flags: [.id], id: 1, uid: 8446865899348115712)
        try entityBuilder.addProperty(name: "person", type: PropertyType.long, id: 3, uid: 7075959898080947200)
        try entityBuilder.addProperty(name: "name", type: PropertyType.string, id: 2, uid: 5582076197919193600)

        try entityBuilder.lastProperty(id: 3, uid: 7075959898080947200)
    }
}

extension Category {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { Category.id == myId }
    internal static var id: Property<Category, Id, Id> { return Property<Category, Id, Id>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { Category.person > 1234 }
    internal static var person: Property<Category, Int, Void> { return Property<Category, Int, Void>(propertyId: 3, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { Category.name.startsWith("X") }
    internal static var name: Property<Category, String, Void> { return Property<Category, String, Void>(propertyId: 2, isPrimaryKey: false) }

    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.id = Id(identifier)
    }
}

extension ObjectBox.Property where E == Category {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id == myId }

    internal static var id: Property<Category, Id, Id> { return Property<Category, Id, Id>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .person > 1234 }

    internal static var person: Property<Category, Int, Void> { return Property<Category, Int, Void>(propertyId: 3, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .name.startsWith("X") }

    internal static var name: Property<Category, String, Void> { return Property<Category, String, Void>(propertyId: 2, isPrimaryKey: false) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `Category.EntityBindingType`.
internal class CategoryBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = Category
    internal typealias IdType = Id

    internal required init() {}

    internal func generatorBindingVersion() -> Int { 1 }

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.id.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) throws {
        let propertyOffset_name = propertyCollector.prepare(string: entity.name)

        propertyCollector.collect(id, at: 2 + 2 * 1)
        propertyCollector.collect(entity.person, at: 2 + 2 * 3)
        propertyCollector.collect(dataOffset: propertyOffset_name, at: 2 + 2 * 2)
    }

    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = Category()

        entity.id = entityReader.read(at: 2 + 2 * 1)
        entity.person = entityReader.read(at: 2 + 2 * 3)
        entity.name = entityReader.read(at: 2 + 2 * 2)

        return entity
    }
}



extension Collection: ObjectBox.__EntityRelatable {
    internal typealias EntityType = Collection

    internal var _id: EntityId<Collection> {
        return EntityId<Collection>(self.id.value)
    }
}

extension Collection: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = CollectionBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "Collection", id: 2)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: Collection.self, id: 2, uid: 2768853124281183488)
        try entityBuilder.addProperty(name: "id", type: PropertyType.long, flags: [.id], id: 1, uid: 8434450088215690752)
        try entityBuilder.addProperty(name: "person", type: PropertyType.long, id: 2, uid: 2257100393322933504)
        try entityBuilder.addProperty(name: "name", type: PropertyType.string, id: 3, uid: 3353296420631732480)

        try entityBuilder.lastProperty(id: 5, uid: 100133179595505920)
    }
}

extension Collection {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { Collection.id == myId }
    internal static var id: Property<Collection, Id, Id> { return Property<Collection, Id, Id>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { Collection.person > 1234 }
    internal static var person: Property<Collection, Int, Void> { return Property<Collection, Int, Void>(propertyId: 2, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { Collection.name.startsWith("X") }
    internal static var name: Property<Collection, String, Void> { return Property<Collection, String, Void>(propertyId: 3, isPrimaryKey: false) }

    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.id = Id(identifier)
    }
}

extension ObjectBox.Property where E == Collection {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id == myId }

    internal static var id: Property<Collection, Id, Id> { return Property<Collection, Id, Id>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .person > 1234 }

    internal static var person: Property<Collection, Int, Void> { return Property<Collection, Int, Void>(propertyId: 2, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .name.startsWith("X") }

    internal static var name: Property<Collection, String, Void> { return Property<Collection, String, Void>(propertyId: 3, isPrimaryKey: false) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `Collection.EntityBindingType`.
internal class CollectionBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = Collection
    internal typealias IdType = Id

    internal required init() {}

    internal func generatorBindingVersion() -> Int { 1 }

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.id.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) throws {
        let propertyOffset_name = propertyCollector.prepare(string: entity.name)

        propertyCollector.collect(id, at: 2 + 2 * 1)
        propertyCollector.collect(entity.person, at: 2 + 2 * 2)
        propertyCollector.collect(dataOffset: propertyOffset_name, at: 2 + 2 * 3)
    }

    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = Collection()

        entity.id = entityReader.read(at: 2 + 2 * 1)
        entity.person = entityReader.read(at: 2 + 2 * 2)
        entity.name = entityReader.read(at: 2 + 2 * 3)

        return entity
    }
}



extension CollectionCategory: ObjectBox.__EntityRelatable {
    internal typealias EntityType = CollectionCategory

    internal var _id: EntityId<CollectionCategory> {
        return EntityId<CollectionCategory>(self.id.value)
    }
}

extension CollectionCategory: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = CollectionCategoryBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "CollectionCategory", id: 8)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: CollectionCategory.self, id: 8, uid: 8221922380828729856)
        try entityBuilder.addProperty(name: "id", type: PropertyType.long, flags: [.id], id: 1, uid: 5115267345062343168)
        try entityBuilder.addProperty(name: "person", type: PropertyType.long, id: 4, uid: 8503945021030156032)
        try entityBuilder.addToOneRelation(name: "category", targetEntityInfo: ToOne<Category>.Target.entityInfo, id: 2, uid: 9140048327395628288, indexId: 9, indexUid: 6277398810029962240)
        try entityBuilder.addToOneRelation(name: "collection", targetEntityInfo: ToOne<Collection>.Target.entityInfo, id: 3, uid: 5489341696431465984, indexId: 10, indexUid: 1513437326763415808)

        try entityBuilder.lastProperty(id: 4, uid: 8503945021030156032)
    }
}

extension CollectionCategory {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { CollectionCategory.id == myId }
    internal static var id: Property<CollectionCategory, Id, Id> { return Property<CollectionCategory, Id, Id>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { CollectionCategory.person > 1234 }
    internal static var person: Property<CollectionCategory, Int, Void> { return Property<CollectionCategory, Int, Void>(propertyId: 4, isPrimaryKey: false) }
    internal static var category: Property<CollectionCategory, EntityId<ToOne<Category>.Target>, ToOne<Category>.Target> { return Property(propertyId: 2) }

    internal static var collection: Property<CollectionCategory, EntityId<ToOne<Collection>.Target>, ToOne<Collection>.Target> { return Property(propertyId: 3) }


    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.id = Id(identifier)
    }
}

extension ObjectBox.Property where E == CollectionCategory {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id == myId }

    internal static var id: Property<CollectionCategory, Id, Id> { return Property<CollectionCategory, Id, Id>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .person > 1234 }

    internal static var person: Property<CollectionCategory, Int, Void> { return Property<CollectionCategory, Int, Void>(propertyId: 4, isPrimaryKey: false) }

    internal static var category: Property<CollectionCategory, ToOne<Category>.Target.EntityBindingType.IdType, ToOne<Category>.Target> { return Property<CollectionCategory, ToOne<Category>.Target.EntityBindingType.IdType, ToOne<Category>.Target>(propertyId: 2) }

    internal static var collection: Property<CollectionCategory, ToOne<Collection>.Target.EntityBindingType.IdType, ToOne<Collection>.Target> { return Property<CollectionCategory, ToOne<Collection>.Target.EntityBindingType.IdType, ToOne<Collection>.Target>(propertyId: 3) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `CollectionCategory.EntityBindingType`.
internal class CollectionCategoryBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = CollectionCategory
    internal typealias IdType = Id

    internal required init() {}

    internal func generatorBindingVersion() -> Int { 1 }

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.id.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) throws {

        propertyCollector.collect(id, at: 2 + 2 * 1)
        propertyCollector.collect(entity.person, at: 2 + 2 * 4)
        try propertyCollector.collect(entity.category, at: 2 + 2 * 2, store: store)
        try propertyCollector.collect(entity.collection, at: 2 + 2 * 3, store: store)
    }

    internal func postPut(fromEntity entity: EntityType, id: ObjectBox.Id, store: ObjectBox.Store) throws {
        if entityId(of: entity) == 0 {  // New object was put? Attach relations now that we have an ID.
            entity.category.attach(to: store.box(for: Category.self))
            entity.collection.attach(to: store.box(for: Collection.self))
        }
    }
    internal func setToOneRelation(_ propertyId: obx_schema_id, of entity: EntityType, to entityId: ObjectBox.Id?) {
        switch propertyId {
            case 2:
                entity.category.targetId = (entityId != nil) ? EntityId<Category>(entityId!) : nil
            case 3:
                entity.collection.targetId = (entityId != nil) ? EntityId<Collection>(entityId!) : nil
            default:
                fatalError("Attempt to change nonexistent ToOne relation with ID \(propertyId)")
        }
    }
    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = CollectionCategory()

        entity.id = entityReader.read(at: 2 + 2 * 1)
        entity.person = entityReader.read(at: 2 + 2 * 4)

        entity.category = entityReader.read(at: 2 + 2 * 2, store: store)
        entity.collection = entityReader.read(at: 2 + 2 * 3, store: store)
        return entity
    }
}



extension CollectionInfo: ObjectBox.__EntityRelatable {
    internal typealias EntityType = CollectionInfo

    internal var _id: EntityId<CollectionInfo> {
        return EntityId<CollectionInfo>(self.id.value)
    }
}

extension CollectionInfo: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = CollectionInfoBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "CollectionInfo", id: 12)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: CollectionInfo.self, id: 12, uid: 8379383723992090112)
        try entityBuilder.addProperty(name: "id", type: PropertyType.long, flags: [.id], id: 1, uid: 444829229152490752)
        try entityBuilder.addProperty(name: "name", type: PropertyType.string, id: 2, uid: 2341571472161299200)
        try entityBuilder.addToOneRelation(name: "collection", targetEntityInfo: ToOne<Collection>.Target.entityInfo, id: 3, uid: 7185314627228572416, indexId: 15, indexUid: 190896229898978304)

        try entityBuilder.lastProperty(id: 3, uid: 7185314627228572416)
    }
}

extension CollectionInfo {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { CollectionInfo.id == myId }
    internal static var id: Property<CollectionInfo, Id, Id> { return Property<CollectionInfo, Id, Id>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { CollectionInfo.name.startsWith("X") }
    internal static var name: Property<CollectionInfo, String, Void> { return Property<CollectionInfo, String, Void>(propertyId: 2, isPrimaryKey: false) }
    internal static var collection: Property<CollectionInfo, EntityId<ToOne<Collection>.Target>, ToOne<Collection>.Target> { return Property(propertyId: 3) }


    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.id = Id(identifier)
    }
}

extension ObjectBox.Property where E == CollectionInfo {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id == myId }

    internal static var id: Property<CollectionInfo, Id, Id> { return Property<CollectionInfo, Id, Id>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .name.startsWith("X") }

    internal static var name: Property<CollectionInfo, String, Void> { return Property<CollectionInfo, String, Void>(propertyId: 2, isPrimaryKey: false) }

    internal static var collection: Property<CollectionInfo, ToOne<Collection>.Target.EntityBindingType.IdType, ToOne<Collection>.Target> { return Property<CollectionInfo, ToOne<Collection>.Target.EntityBindingType.IdType, ToOne<Collection>.Target>(propertyId: 3) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `CollectionInfo.EntityBindingType`.
internal class CollectionInfoBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = CollectionInfo
    internal typealias IdType = Id

    internal required init() {}

    internal func generatorBindingVersion() -> Int { 1 }

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.id.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) throws {
        let propertyOffset_name = propertyCollector.prepare(string: entity.name)

        propertyCollector.collect(id, at: 2 + 2 * 1)
        try propertyCollector.collect(entity.collection, at: 2 + 2 * 3, store: store)
        propertyCollector.collect(dataOffset: propertyOffset_name, at: 2 + 2 * 2)
    }

    internal func postPut(fromEntity entity: EntityType, id: ObjectBox.Id, store: ObjectBox.Store) throws {
        if entityId(of: entity) == 0 {  // New object was put? Attach relations now that we have an ID.
            entity.collection.attach(to: store.box(for: Collection.self))
        }
    }
    internal func setToOneRelation(_ propertyId: obx_schema_id, of entity: EntityType, to entityId: ObjectBox.Id?) {
        switch propertyId {
            case 3:
                entity.collection.targetId = (entityId != nil) ? EntityId<Collection>(entityId!) : nil
            default:
                fatalError("Attempt to change nonexistent ToOne relation with ID \(propertyId)")
        }
    }
    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = CollectionInfo()

        entity.id = entityReader.read(at: 2 + 2 * 1)
        entity.name = entityReader.read(at: 2 + 2 * 2)

        entity.collection = entityReader.read(at: 2 + 2 * 3, store: store)
        return entity
    }
}



extension Item: ObjectBox.__EntityRelatable {
    internal typealias EntityType = Item

    internal var _id: EntityId<Item> {
        return EntityId<Item>(self.id.value)
    }
}

extension Item: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = ItemBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "Item", id: 3)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: Item.self, id: 3, uid: 5778975554644412416)
        try entityBuilder.addProperty(name: "id", type: PropertyType.long, flags: [.id], id: 1, uid: 4426592308817277440)
        try entityBuilder.addProperty(name: "name", type: PropertyType.string, id: 2, uid: 1508603364690661120)
        try entityBuilder.addProperty(name: "imageName", type: PropertyType.string, id: 4, uid: 2821288224812149504)
        try entityBuilder.addToOneRelation(name: "collection", targetEntityInfo: ToOne<Collection>.Target.entityInfo, id: 3, uid: 8286116984080922368, indexId: 2, indexUid: 3266113425748552448)
        try entityBuilder.addToOneRelation(name: "brand", targetEntityInfo: ToOne<Brand>.Target.entityInfo, id: 5, uid: 8517069430366107648, indexId: 8, indexUid: 1830523505325289216)

        try entityBuilder.lastProperty(id: 5, uid: 8517069430366107648)
    }
}

extension Item {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { Item.id == myId }
    internal static var id: Property<Item, Id, Id> { return Property<Item, Id, Id>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { Item.name.startsWith("X") }
    internal static var name: Property<Item, String, Void> { return Property<Item, String, Void>(propertyId: 2, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { Item.imageName.startsWith("X") }
    internal static var imageName: Property<Item, String, Void> { return Property<Item, String, Void>(propertyId: 4, isPrimaryKey: false) }
    internal static var collection: Property<Item, EntityId<ToOne<Collection>.Target>, ToOne<Collection>.Target> { return Property(propertyId: 3) }

    internal static var brand: Property<Item, EntityId<ToOne<Brand>.Target>, ToOne<Brand>.Target> { return Property(propertyId: 5) }


    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.id = Id(identifier)
    }
}

extension ObjectBox.Property where E == Item {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id == myId }

    internal static var id: Property<Item, Id, Id> { return Property<Item, Id, Id>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .name.startsWith("X") }

    internal static var name: Property<Item, String, Void> { return Property<Item, String, Void>(propertyId: 2, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .imageName.startsWith("X") }

    internal static var imageName: Property<Item, String, Void> { return Property<Item, String, Void>(propertyId: 4, isPrimaryKey: false) }

    internal static var collection: Property<Item, ToOne<Collection>.Target.EntityBindingType.IdType, ToOne<Collection>.Target> { return Property<Item, ToOne<Collection>.Target.EntityBindingType.IdType, ToOne<Collection>.Target>(propertyId: 3) }

    internal static var brand: Property<Item, ToOne<Brand>.Target.EntityBindingType.IdType, ToOne<Brand>.Target> { return Property<Item, ToOne<Brand>.Target.EntityBindingType.IdType, ToOne<Brand>.Target>(propertyId: 5) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `Item.EntityBindingType`.
internal class ItemBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = Item
    internal typealias IdType = Id

    internal required init() {}

    internal func generatorBindingVersion() -> Int { 1 }

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.id.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) throws {
        let propertyOffset_name = propertyCollector.prepare(string: entity.name)
        let propertyOffset_imageName = propertyCollector.prepare(string: entity.imageName)

        propertyCollector.collect(id, at: 2 + 2 * 1)
        try propertyCollector.collect(entity.collection, at: 2 + 2 * 3, store: store)
        try propertyCollector.collect(entity.brand, at: 2 + 2 * 5, store: store)
        propertyCollector.collect(dataOffset: propertyOffset_name, at: 2 + 2 * 2)
        propertyCollector.collect(dataOffset: propertyOffset_imageName, at: 2 + 2 * 4)
    }

    internal func postPut(fromEntity entity: EntityType, id: ObjectBox.Id, store: ObjectBox.Store) throws {
        if entityId(of: entity) == 0 {  // New object was put? Attach relations now that we have an ID.
            entity.collection.attach(to: store.box(for: Collection.self))
            entity.brand.attach(to: store.box(for: Brand.self))
        }
    }
    internal func setToOneRelation(_ propertyId: obx_schema_id, of entity: EntityType, to entityId: ObjectBox.Id?) {
        switch propertyId {
            case 3:
                entity.collection.targetId = (entityId != nil) ? EntityId<Collection>(entityId!) : nil
            case 5:
                entity.brand.targetId = (entityId != nil) ? EntityId<Brand>(entityId!) : nil
            default:
                fatalError("Attempt to change nonexistent ToOne relation with ID \(propertyId)")
        }
    }
    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = Item()

        entity.id = entityReader.read(at: 2 + 2 * 1)
        entity.name = entityReader.read(at: 2 + 2 * 2)
        entity.imageName = entityReader.read(at: 2 + 2 * 4)

        entity.collection = entityReader.read(at: 2 + 2 * 3, store: store)
        entity.brand = entityReader.read(at: 2 + 2 * 5, store: store)
        return entity
    }
}



extension ItemCategory: ObjectBox.__EntityRelatable {
    internal typealias EntityType = ItemCategory

    internal var _id: EntityId<ItemCategory> {
        return EntityId<ItemCategory>(self.id.value)
    }
}

extension ItemCategory: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = ItemCategoryBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "ItemCategory", id: 9)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: ItemCategory.self, id: 9, uid: 6514017711345927424)
        try entityBuilder.addProperty(name: "id", type: PropertyType.long, flags: [.id], id: 1, uid: 2416390340266215680)
        try entityBuilder.addProperty(name: "person", type: PropertyType.long, id: 4, uid: 2033545402155796224)
        try entityBuilder.addToOneRelation(name: "category", targetEntityInfo: ToOne<Category>.Target.entityInfo, id: 2, uid: 877395142773589504, indexId: 11, indexUid: 5001969432030078720)
        try entityBuilder.addToOneRelation(name: "item", targetEntityInfo: ToOne<Item>.Target.entityInfo, id: 3, uid: 5524132361936056064, indexId: 12, indexUid: 8668960594723135232)

        try entityBuilder.lastProperty(id: 4, uid: 2033545402155796224)
    }
}

extension ItemCategory {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { ItemCategory.id == myId }
    internal static var id: Property<ItemCategory, Id, Id> { return Property<ItemCategory, Id, Id>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { ItemCategory.person > 1234 }
    internal static var person: Property<ItemCategory, Int, Void> { return Property<ItemCategory, Int, Void>(propertyId: 4, isPrimaryKey: false) }
    internal static var category: Property<ItemCategory, EntityId<ToOne<Category>.Target>, ToOne<Category>.Target> { return Property(propertyId: 2) }

    internal static var item: Property<ItemCategory, EntityId<ToOne<Item>.Target>, ToOne<Item>.Target> { return Property(propertyId: 3) }


    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.id = Id(identifier)
    }
}

extension ObjectBox.Property where E == ItemCategory {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id == myId }

    internal static var id: Property<ItemCategory, Id, Id> { return Property<ItemCategory, Id, Id>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .person > 1234 }

    internal static var person: Property<ItemCategory, Int, Void> { return Property<ItemCategory, Int, Void>(propertyId: 4, isPrimaryKey: false) }

    internal static var category: Property<ItemCategory, ToOne<Category>.Target.EntityBindingType.IdType, ToOne<Category>.Target> { return Property<ItemCategory, ToOne<Category>.Target.EntityBindingType.IdType, ToOne<Category>.Target>(propertyId: 2) }

    internal static var item: Property<ItemCategory, ToOne<Item>.Target.EntityBindingType.IdType, ToOne<Item>.Target> { return Property<ItemCategory, ToOne<Item>.Target.EntityBindingType.IdType, ToOne<Item>.Target>(propertyId: 3) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `ItemCategory.EntityBindingType`.
internal class ItemCategoryBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = ItemCategory
    internal typealias IdType = Id

    internal required init() {}

    internal func generatorBindingVersion() -> Int { 1 }

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.id.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) throws {

        propertyCollector.collect(id, at: 2 + 2 * 1)
        propertyCollector.collect(entity.person, at: 2 + 2 * 4)
        try propertyCollector.collect(entity.category, at: 2 + 2 * 2, store: store)
        try propertyCollector.collect(entity.item, at: 2 + 2 * 3, store: store)
    }

    internal func postPut(fromEntity entity: EntityType, id: ObjectBox.Id, store: ObjectBox.Store) throws {
        if entityId(of: entity) == 0 {  // New object was put? Attach relations now that we have an ID.
            entity.category.attach(to: store.box(for: Category.self))
            entity.item.attach(to: store.box(for: Item.self))
        }
    }
    internal func setToOneRelation(_ propertyId: obx_schema_id, of entity: EntityType, to entityId: ObjectBox.Id?) {
        switch propertyId {
            case 2:
                entity.category.targetId = (entityId != nil) ? EntityId<Category>(entityId!) : nil
            case 3:
                entity.item.targetId = (entityId != nil) ? EntityId<Item>(entityId!) : nil
            default:
                fatalError("Attempt to change nonexistent ToOne relation with ID \(propertyId)")
        }
    }
    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = ItemCategory()

        entity.id = entityReader.read(at: 2 + 2 * 1)
        entity.person = entityReader.read(at: 2 + 2 * 4)

        entity.category = entityReader.read(at: 2 + 2 * 2, store: store)
        entity.item = entityReader.read(at: 2 + 2 * 3, store: store)
        return entity
    }
}



extension ItemInfo: ObjectBox.__EntityRelatable {
    internal typealias EntityType = ItemInfo

    internal var _id: EntityId<ItemInfo> {
        return EntityId<ItemInfo>(self.id.value)
    }
}

extension ItemInfo: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = ItemInfoBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "ItemInfo", id: 11)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: ItemInfo.self, id: 11, uid: 8536635370774429696)
        try entityBuilder.addProperty(name: "id", type: PropertyType.long, flags: [.id], id: 1, uid: 5546218708738919168)
        try entityBuilder.addProperty(name: "name", type: PropertyType.string, id: 2, uid: 3198088520098237952)
        try entityBuilder.addProperty(name: "value", type: PropertyType.string, id: 3, uid: 4939147136351874816)
        try entityBuilder.addToOneRelation(name: "item", targetEntityInfo: ToOne<Item>.Target.entityInfo, id: 4, uid: 4610998012746440448, indexId: 14, indexUid: 8076870948432419584)

        try entityBuilder.lastProperty(id: 4, uid: 4610998012746440448)
    }
}

extension ItemInfo {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { ItemInfo.id == myId }
    internal static var id: Property<ItemInfo, Id, Id> { return Property<ItemInfo, Id, Id>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { ItemInfo.name.startsWith("X") }
    internal static var name: Property<ItemInfo, String, Void> { return Property<ItemInfo, String, Void>(propertyId: 2, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { ItemInfo.value.startsWith("X") }
    internal static var value: Property<ItemInfo, String, Void> { return Property<ItemInfo, String, Void>(propertyId: 3, isPrimaryKey: false) }
    internal static var item: Property<ItemInfo, EntityId<ToOne<Item>.Target>, ToOne<Item>.Target> { return Property(propertyId: 4) }


    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.id = Id(identifier)
    }
}

extension ObjectBox.Property where E == ItemInfo {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id == myId }

    internal static var id: Property<ItemInfo, Id, Id> { return Property<ItemInfo, Id, Id>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .name.startsWith("X") }

    internal static var name: Property<ItemInfo, String, Void> { return Property<ItemInfo, String, Void>(propertyId: 2, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .value.startsWith("X") }

    internal static var value: Property<ItemInfo, String, Void> { return Property<ItemInfo, String, Void>(propertyId: 3, isPrimaryKey: false) }

    internal static var item: Property<ItemInfo, ToOne<Item>.Target.EntityBindingType.IdType, ToOne<Item>.Target> { return Property<ItemInfo, ToOne<Item>.Target.EntityBindingType.IdType, ToOne<Item>.Target>(propertyId: 4) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `ItemInfo.EntityBindingType`.
internal class ItemInfoBinding: ObjectBox.EntityBinding {
    internal typealias EntityType = ItemInfo
    internal typealias IdType = Id

    internal required init() {}

    internal func generatorBindingVersion() -> Int { 1 }

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.id.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) throws {
        let propertyOffset_name = propertyCollector.prepare(string: entity.name)
        let propertyOffset_value = propertyCollector.prepare(string: entity.value)

        propertyCollector.collect(id, at: 2 + 2 * 1)
        try propertyCollector.collect(entity.item, at: 2 + 2 * 4, store: store)
        propertyCollector.collect(dataOffset: propertyOffset_name, at: 2 + 2 * 2)
        propertyCollector.collect(dataOffset: propertyOffset_value, at: 2 + 2 * 3)
    }

    internal func postPut(fromEntity entity: EntityType, id: ObjectBox.Id, store: ObjectBox.Store) throws {
        if entityId(of: entity) == 0 {  // New object was put? Attach relations now that we have an ID.
            entity.item.attach(to: store.box(for: Item.self))
        }
    }
    internal func setToOneRelation(_ propertyId: obx_schema_id, of entity: EntityType, to entityId: ObjectBox.Id?) {
        switch propertyId {
            case 4:
                entity.item.targetId = (entityId != nil) ? EntityId<Item>(entityId!) : nil
            default:
                fatalError("Attempt to change nonexistent ToOne relation with ID \(propertyId)")
        }
    }
    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = ItemInfo()

        entity.id = entityReader.read(at: 2 + 2 * 1)
        entity.name = entityReader.read(at: 2 + 2 * 2)
        entity.value = entityReader.read(at: 2 + 2 * 3)

        entity.item = entityReader.read(at: 2 + 2 * 4, store: store)
        return entity
    }
}


/// Helper function that allows calling Enum(rawValue: value) with a nil value, which will return nil.
fileprivate func optConstruct<T: RawRepresentable>(_ type: T.Type, rawValue: T.RawValue?) -> T? {
    guard let rawValue = rawValue else { return nil }
    return T(rawValue: rawValue)
}

// MARK: - Store setup

fileprivate func cModel() throws -> OpaquePointer {
    let modelBuilder = try ObjectBox.ModelBuilder()
    try Brand.buildEntity(modelBuilder: modelBuilder)
    try Category.buildEntity(modelBuilder: modelBuilder)
    try Collection.buildEntity(modelBuilder: modelBuilder)
    try CollectionCategory.buildEntity(modelBuilder: modelBuilder)
    try CollectionInfo.buildEntity(modelBuilder: modelBuilder)
    try Item.buildEntity(modelBuilder: modelBuilder)
    try ItemCategory.buildEntity(modelBuilder: modelBuilder)
    try ItemInfo.buildEntity(modelBuilder: modelBuilder)
    modelBuilder.lastEntity(id: 12, uid: 8379383723992090112)
    modelBuilder.lastIndex(id: 15, uid: 190896229898978304)
    modelBuilder.lastRelation(id: 2, uid: 3606171618666258944)
    return modelBuilder.finish()
}

extension ObjectBox.Store {
    /// A store with a fully configured model. Created by the code generator with your model's metadata in place.
    ///
    /// - Parameters:
    ///   - directoryPath: The directory path in which ObjectBox places its database files for this store.
    ///   - maxDbSizeInKByte: Limit of on-disk space for the database files. Default is `1024 * 1024` (1 GiB).
    ///   - fileMode: UNIX-style bit mask used for the database files; default is `0o644`.
    ///     Note: directories become searchable if the "read" or "write" permission is set (e.g. 0640 becomes 0750).
    ///   - maxReaders: The maximum number of readers.
    ///     "Readers" are a finite resource for which we need to define a maximum number upfront.
    ///     The default value is enough for most apps and usually you can ignore it completely.
    ///     However, if you get the maxReadersExceeded error, you should verify your
    ///     threading. For each thread, ObjectBox uses multiple readers. Their number (per thread) depends
    ///     on number of types, relations, and usage patterns. Thus, if you are working with many threads
    ///     (e.g. in a server-like scenario), it can make sense to increase the maximum number of readers.
    ///     Note: The internal default is currently around 120.
    ///           So when hitting this limit, try values around 200-500.
    /// - important: This initializer is created by the code generator. If you only see the internal `init(model:...)`
    ///              initializer, trigger code generation by building your project.
    internal convenience init(directoryPath: String, maxDbSizeInKByte: UInt64 = 1024 * 1024,
                            fileMode: UInt32 = 0o644, maxReaders: UInt32 = 0, readOnly: Bool = false) throws {
        try self.init(
            model: try cModel(),
            directory: directoryPath,
            maxDbSizeInKByte: maxDbSizeInKByte,
            fileMode: fileMode,
            maxReaders: maxReaders,
            readOnly: readOnly)
    }
}

// swiftlint:enable all
