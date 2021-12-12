import UIKit

// In Out Parameters

struct User {
    var userId: Int?
    let name: String
}

func saveUser(_ user: inout User) {
    user.userId = 800
}

var user = User(name: "Wanhar")
saveUser(&user)

print(user)
