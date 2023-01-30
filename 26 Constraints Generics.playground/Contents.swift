import UIKit

// Example findIndex
struct Movie: Equatable {
    let name: String
}

let numbers = [1,2,3,5,6,7,10]
let names = ["Alex", "John", "Mary", "Steve"]
let movies = [Movie(name: "Batman"), Movie(name: "Spiderman"), Movie(name: "Superman")]

func findIndex<T: Equatable>(from list: [T], valueToFind: T) -> Int? {
    
    return list.firstIndex { (item) -> Bool in
        return item == valueToFind
    }
}

let batmanMovie = Movie(name: "Batman")

print(findIndex(from: movies, valueToFind: batmanMovie))

// Example 2

/*
struct Movie: Encodable {
    let title: String
}

func serializeToData<T: Encodable>(_ value: T) -> Data? {
    return try? JSONEncoder().encode(value)
}

print(serializeToData(Movie(title: "Batman")))
 */

protocol Fly { func fly() }
protocol Teleport { func teleport() }
protocol Strength { func throwObject() }

typealias SuperHero = Fly & Teleport & Strength

struct Electronman: SuperHero {
   
    func fly() { }
    func teleport() { }
    func throwObject() { }
}

struct Superman: Fly {
    func fly() { }
}

func attack<T: SuperHero>(value: T) {
    
}

let electronMan = Electronman()
attack(value: electronMan)
