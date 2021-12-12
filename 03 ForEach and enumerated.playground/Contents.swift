import UIKit

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

// print item
movies.forEach { movie in
    print(movie)
}

// access index in list
movies.enumerated().forEach { (index, movie) in
    print("Movie at \(index) has a title \(movie.title)")
}
