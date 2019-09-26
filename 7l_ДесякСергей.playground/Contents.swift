import UIKit

enum possibleErrors: Error {
    case haveNoThisType
    case theryMatchLiters
    case notEnoughMoney(moneyNeeded: Int)
}

struct gas {
    var price: Int
    var count: Int
}

class gasStation {
    var inTank = [
        "92" : gas(price: 40, count: 100),
        "95" : gas(price: 45, count: 200),
        "DT" : gas(price: 45, count: 150)
    ]
    var deposite = 0
    func sell (_ type: String, _ liters: Int) throws {
        guard let item = inTank[type] else {
            throw possibleErrors.haveNoThisType
        }
        guard item.count > liters else {
            throw possibleErrors.theryMatchLiters
        }
        guard (item.price*liters) <= deposite else {
            throw possibleErrors.notEnoughMoney(moneyNeeded: item.price*liters - deposite)
        }
        deposite -= item.price
        var newItem = item
        newItem.count -= liters
        print("Вы приобрели \(liters) литров \(type) топлива \n\(type) осталось \(newItem.count) литров")
    }
}
var a = gasStation()
a.deposite = 100
do {
    try a.sell("92", 40)
} catch possibleErrors.haveNoThisType {
    print("нет такого топлива")
} catch possibleErrors.theryMatchLiters {
    print("недостаточно топлива для заправки")
} catch possibleErrors.notEnoughMoney(let moneyNeeded) {
    print("недостаточно средств для покупки. Необходимо еще \(moneyNeeded).")
} catch let error {
    print(error.localizedDescription)
}

do {
    try a.sell("95", 2)
} catch possibleErrors.haveNoThisType {
    print("нет такого топлива")
} catch possibleErrors.theryMatchLiters {
    print("недостаточно топлива для заправки")
} catch possibleErrors.notEnoughMoney(let moneyNeeded) {
    print("недостаточно средств для покупки. Необходимо еще \(moneyNeeded).")
} catch let error {
    print(error.localizedDescription)
}
