import Foundation

struct Car: Identifiable {

    let id = UUID()

    let image: String

    let name: String

    let price: String

    let rating: String

    let topSpeed: String

    let horsepower: String

    let engine: String

    let description: String

    let category: String
    
    var isFavourite: Bool = false
}
