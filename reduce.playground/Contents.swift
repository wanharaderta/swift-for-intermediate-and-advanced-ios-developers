import UIKit

struct Item {
    let name: String
    let price: Double
}

struct Cart {
    
    private(set) var items: [Item] = []
    
    mutating func addItem(_ item: Item) {
        items.append(item)
    }
    
    var total: Double {
        items.reduce(0) { (result, item) -> Double in
            return result + item.price
        }
    }
}

var cart = Cart()
cart.addItem(Item(name: "Milk", price: 4.50))
cart.addItem(Item(name: "Coffee", price: 5.00))
cart.addItem(Item(name: "Teh", price: 2.50))

print("total \(cart.total)")

/// reduce intro

let ratings = [4, 8.5, 9.5, 2, 6, 3, 5.5, 7, 2.8, 9.8, 1.5]

let results = ratings.reduce([:]) { (result: [String: Int], rating: Double) in
    var copy = result
    
    switch rating {
        case 1..<4: copy["Very bad", default: 0] += 1
        case 4..<6: copy["OK", default: 0] += 1
        case 6..<8: copy["Good", default: 0] += 1
        case 8..<11: copy["Excellent", default: 0] += 1
        default: break
    }
    
    return copy
}

print(results)
