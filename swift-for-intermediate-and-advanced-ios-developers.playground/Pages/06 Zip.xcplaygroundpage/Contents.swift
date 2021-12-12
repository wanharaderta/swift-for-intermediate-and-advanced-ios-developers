//: [Previous](@previous)

import UIKit

let students = ["Alex", "Mary", "John", "Steven", "Maro"]
let grades = [3.4, 2.8, 3, 4]

let pair = zip(students, grades)

for studentAndGrade in pair {
    print(studentAndGrade.0)
    print(studentAndGrade.1)
}

// student maro will not printd, because not have a pair grade
//: [Next](@next)
