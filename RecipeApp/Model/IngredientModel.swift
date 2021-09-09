
import Foundation

struct Ingredient:Identifiable, Codable, Equatable {
    var id = UUID()
    var title: String
    var items: [IngredientItem]
}

struct IngredientItem:Identifiable, Codable, Equatable {
    var id = UUID()
    var name: String
    var done: Bool
}
