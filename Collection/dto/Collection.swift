import Foundation
import SwiftUI

struct Collection: Hashable, Codable {
    var id: Int
    var name: String
    var category: Category
    var fields: [String]
}
