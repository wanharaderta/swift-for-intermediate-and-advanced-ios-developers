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
