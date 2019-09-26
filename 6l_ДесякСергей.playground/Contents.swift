import UIKit

struct queue<T: Comparable> {
    var ourColl = [T]()
    
    mutating func filter (item: T) {
        print("Найдено \(ourColl.filter{$0 == item})")
    }
    
    mutating func remove(item: Int){
        ourColl.remove(at: item)
    }
    
    subscript(index: Int) -> String {
        return (index < ourColl.count ? ourColl[index] as! String : "nil")
    }
}

var new = queue<String>(ourColl: ["first", "second"])
print(new)
new.filter(item: "first")
new.remove(item: 1)
print(new)
print(new[1])


