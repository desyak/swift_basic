import UIKit

struct queue<T: Comparable> {
    var ourColl = [T]()
    
    mutating func filter () {
        
    }
    
    subscript(index: Int) -> Int? {
        if (index < ourColl.lastIndex(where: <#T##(Equatable) throws -> Bool#>))
    return nil
    }
}


