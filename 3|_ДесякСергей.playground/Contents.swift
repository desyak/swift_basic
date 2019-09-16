import UIKit

struct newAuto{
    var typeAuto: String = ""
    var markaAuto: String = ""
    var dataFromd: String = ""
    var obiemBagageTotal: Int = 0
    var statusOfenging: stat
    var statusOfwindows: Bool = false
    var obiemBagageUsed: Int = 0
    enum stat: String {
        case On = "Working"
        case Off = "Not Working"
    }
    enum direction{
        case In
        case Out
    }
    enum act {
        case engine(st: stat)
        case window(status: Bool)
        case bagage(napr: direction, withWeigth: Int)
        
    }
    mutating func activ(activiti: act){
        switch activiti {
        case .engine(let st):
            self.statusOfenging = st
        case .window(let win):
            self.statusOfwindows = win
        case .bagage(let napr,let  withWeigth):
            switch napr {
            case .In:
                self.obiemBagageUsed += withWeigth
            case .Out:
                self.obiemBagageUsed -= withWeigth
            }
        }
    }

}

var legkovaya=newAuto(typeAuto: "Легковой", markaAuto: "GAZ", dataFromd: "2001",obiemBagageTotal: 501, statusOfenging: .On, statusOfwindows: true, obiemBagageUsed: 100)
print("Автомобиль \(legkovaya.typeAuto) марки \(legkovaya.markaAuto) , дата производства \(legkovaya.dataFromd) год, объем кузова \(legkovaya.obiemBagageTotal) из них использовано \(legkovaya.obiemBagageUsed). Двигатель \(legkovaya.statusOfenging.rawValue)")
legkovaya.activ(activiti: .bagage(napr: .In, withWeigth: 100) )
print("Автомобиль \(legkovaya.typeAuto) марки \(legkovaya.markaAuto) , дата производства \(legkovaya.dataFromd) год, объем кузова \(legkovaya.obiemBagageTotal) из них использовано \(legkovaya.obiemBagageUsed). Двигатель \(legkovaya.statusOfenging.rawValue)")
legkovaya.activ(activiti: .engine(st: .Off))
print("Автомобиль \(legkovaya.typeAuto) марки \(legkovaya.markaAuto) , дата производства \(legkovaya.dataFromd) год, объем кузова \(legkovaya.obiemBagageTotal) из них использовано \(legkovaya.obiemBagageUsed). Двигатель \(legkovaya.statusOfenging.rawValue)")
legkovaya.activ(activiti: .window(status: false))
print("Автомобиль \(legkovaya.typeAuto) марки \(legkovaya.markaAuto) , дата производства \(legkovaya.dataFromd) год, объем кузова \(legkovaya.obiemBagageTotal) из них использовано \(legkovaya.obiemBagageUsed). Двигатель \(legkovaya.statusOfenging.rawValue)")
var gruzovaya=newAuto(typeAuto: "Грузовой",markaAuto: "MAZ", dataFromd: "1990", obiemBagageTotal: 4000, statusOfenging: .Off, statusOfwindows: false, obiemBagageUsed: 1000)
print("Автомобиль \(gruzovaya.typeAuto) марки \(gruzovaya.markaAuto) , дата производства \(gruzovaya.dataFromd) год, объем кузова \(gruzovaya.obiemBagageTotal) из них использовано \(gruzovaya.obiemBagageUsed). Двигатель \(gruzovaya.statusOfenging.rawValue)")





