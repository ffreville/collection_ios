import Foundation
import ObjectBox

class CollectionInfo: Entity, Identifiable, ObservableObject{
    var id: Id = 0
    @Published var name: String = ""
    var collection: ToOne<Collection> = nil
}
