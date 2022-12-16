import Foundation
import SwiftUI

struct Item: Hashable, Codable, Identifiable {
    var id: Int?
    var name: String
    var collection: Collection?
    var brand: Brand?
    var fields: [String: String]?
    var isFavourite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}

