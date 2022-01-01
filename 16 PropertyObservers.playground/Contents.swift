import UIKit

struct Website {
    
    init(url: String) {
        
        defer { self.url = url }
        
        self.url = url
    }
    
    var url: String {
        
        didSet {
            url = url.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? url
        }
    }
    
}

var website = Website(url: "www.news.com/?search=rampok di indonesia")
//website.url = "www.news.com/?search=rampok di indonesia"
print(website)
