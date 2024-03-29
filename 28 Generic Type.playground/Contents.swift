import UIKit

enum NetworkError: Error {
    case badUrl
}

struct Post: Codable {
    let title: String
}

enum Callback<T: Codable, K: Error> {
    case success(T)
    case failure(K)
}

func getPosts(completion: (Callback<[Post], NetworkError>) -> Void) {
    
    // get all posts
    let posts = [Post(title: "Hello World"), Post(title: "Introduction to Swift")]
    completion(.success(posts))
    //completion(.failure(.badUrl))
    
}

getPosts { (result) in
    switch result {
        case .success(let posts):
            print(posts)
        case .failure(let error):
            print(error)
    }
}
