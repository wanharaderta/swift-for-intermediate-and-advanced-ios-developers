import UIKit

let hello: (String) -> () = {
    print("Hello \($0)")
}

hello("Wanhar")

let pow: (Int, Int) -> Int = {
    $0 * $1
}

let result = pow(5, 4)
print(result)

func getPosts(completion: @escaping ([String]) -> ()) {
    var posts: [String] = []
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        posts = ["Hello World", "Introduction to Closures"]
        completion(posts)
    }
}

getPosts { (post) in
    print(post)
}
