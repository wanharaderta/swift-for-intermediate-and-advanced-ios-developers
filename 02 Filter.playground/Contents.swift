import UIKit


var names = ["budi", "beta", "wanhar", "pace"]

names = names.filter { name in
    return name.count > 4
}

print(names)


struct Movie {
    let title: String
    let genre: String
}

var movies = [
    Movie(title: "Lord of the rings", genre: "Fiction"),
    Movie(title: "ET", genre: "Fiction"),
    Movie(title: "Nemo", genre: "Kids"),
    Movie(title: "Cars", genre: "Kids")
]

let kidMovies = movies.filter { return $0.genre == "Kids" }

print(kidMovies)


// example how to remove item in list

let movieToRemove = Movie(title: "Nemo", genre: "Kids")

movies = movies.filter { return $0.title != movieToRemove.title }

print("after remove item \(movies)")

