import UIKit
func check(delimoe: Int,delitel: Int)->Bool{
    
    if ((delimoe % delitel) == 0){
        return true
    } else {
        return false
}
}

var new_array = [Int] (1...100)
/*
var new_array: [Int] = []
 for i in 1...100{
    new_array.append(i)
} */

new_array = new_array.filter({check( delimoe: $0, delitel: 2)})
new_array = new_array.filter({check(delimoe: $0, delitel: 3)})



var new_array1 = [0,1]
func addFib ( new_array1: inout [Int] ){
    new_array1.append(new_array1.last! + new_array1[new_array1.lastIndex(of: new_array1.last!)!-1])
}
for _ in 1...91 {
    addFib(new_array1: &new_array1)
}
print(new_array1)

var new_array2 = [Int] (2...100)
var  p = new_array2.first

for (i,_) in new_array2.enumerated() {
    
    let a =  i * p!
    print(a)
        new_array2.remove(at: a )
   print(new_array2)
}
print(new_array2)

