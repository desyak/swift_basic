import UIKit

class newAuto{
    var typeAuto: String = ""
    var markaAuto: String = ""
    var dataFromd: String = ""
    var statusOfenging: stat
    var statusOfwindows: Bool = false
    enum stat: String {
        case On = "Working"
        case Off = "Not Working"
    }

    enum act {
        case engine(st: stat)
        case window(status: Bool)
        
    }
    init(typeAuto: String, markaAuto: String, dataFromd: String, statusOfenging: stat, statusOfwindows: Bool) {
            self.typeAuto=typeAuto
            self.markaAuto=markaAuto
            self.dataFromd=dataFromd
        //    self.obiemBagageTotal=obiemBagageTotal
            self.statusOfenging=statusOfenging
            self.statusOfwindows=statusOfwindows
       //     self.obiemBagageUsed=obiemBagageUsed
        
    }
    func activ(activiti: act){
        switch activiti {
        case .engine(let st):
            statusOfenging = st
        case .window(let win):
            statusOfwindows = win
        }
    }
    
}

class sportCar: newAuto {
    var currentSpeed: Int = 0
    var Spoiler: spoilerStatus
    enum naprSpeed {
        case Up
        case Down
    }
    enum spoilerStatus: String {
        case active = "Активирован"
        case not_active = "Не активирован"
    }
    enum actSport {
        case setSpoiler(spStat: spoilerStatus)
        case speed(napr: naprSpeed, speedValue: Int)
        
    }
    init(typeAuto: String, markaAuto: String, dataFromd: String,  statusOfenging: stat, statusOfwindows: Bool, currentSpeed: Int, Spoiler: spoilerStatus) {
        self.currentSpeed=currentSpeed
        self.Spoiler=Spoiler
        super.init(typeAuto: typeAuto, markaAuto: markaAuto, dataFromd: dataFromd, statusOfenging: statusOfenging, statusOfwindows: statusOfwindows)

    }
    
    func activSport(activiti: actSport){
        switch activiti {
            case .setSpoiler(let spStat):
                Spoiler=spStat
            case .speed(let napr,let  speedValue):
                switch napr {
                case .Up:
                    currentSpeed += speedValue
                case .Down:
                    currentSpeed -= speedValue
            }
        }
    }
}

class truckCar: newAuto {
    var obiemBagageTotal: Int = 0
    var obiemBagageUsed: Int = 0
    enum direction{
        case In
        case Out
    }
    
    enum actTruck {
        case bagage(napr: direction, withWeigth: Int)
        
    }
    init(typeAuto: String, markaAuto: String, dataFromd: String,  statusOfenging: stat, statusOfwindows: Bool,  obiemBagageTotal: Int, obiemBagageUsed: Int) {
        self.obiemBagageTotal=obiemBagageTotal
        self.obiemBagageUsed=obiemBagageUsed
        super.init(typeAuto: typeAuto, markaAuto: markaAuto, dataFromd: dataFromd, statusOfenging: statusOfenging, statusOfwindows: statusOfwindows)

    }
    
    func activTruck(activiti: actTruck){
        switch activiti {
        case .bagage(let napr,let  withWeigth):
            switch napr {
            case .In:
                obiemBagageUsed += withWeigth
            case .Out:
                obiemBagageUsed -= withWeigth
            }
        
        }
    }
}
var legkovaya=newAuto(typeAuto: "Легковой", markaAuto: "GAZ", dataFromd: "2001", statusOfenging: .On, statusOfwindows: true)
print("Автомобиль \(legkovaya.typeAuto) марки \(legkovaya.markaAuto) , дата производства \(legkovaya.dataFromd) год. Двигатель \(legkovaya.statusOfenging.rawValue)")

var truckAuto = truckCar(typeAuto: "Грузовой", markaAuto: "Kraz", dataFromd: "1999", statusOfenging: .Off, statusOfwindows: false, obiemBagageTotal: 4000
    , obiemBagageUsed: 1000)
print("Автомобиль \(truckAuto.typeAuto) марки \(truckAuto.markaAuto) , дата производства \(truckAuto.dataFromd) год, объем кузова \(truckAuto.obiemBagageTotal) из них использовано \(truckAuto.obiemBagageUsed). Двигатель \(truckAuto.statusOfenging.rawValue)")
truckAuto.activ(activiti: .engine(st: .Off))
truckAuto.activTruck(activiti: .bagage(napr: .In, withWeigth: 1000) )
print("Автомобиль \(truckAuto.typeAuto) марки \(truckAuto.markaAuto) , дата производства \(truckAuto.dataFromd) год, объем кузова \(truckAuto.obiemBagageTotal) из них использовано \(truckAuto.obiemBagageUsed). Двигатель \(truckAuto.statusOfenging.rawValue)")
truckAuto.activ(activiti: .window(status: false))

var SportCar=sportCar(typeAuto: "Легковой", markaAuto: "McLaren", dataFromd: "2005", statusOfenging: .On, statusOfwindows: true, currentSpeed: 100, Spoiler: .active)
print("Автомобиль \(SportCar.typeAuto) марки \(SportCar.markaAuto) , дата производства \(SportCar.dataFromd) год, скорость \(SportCar.currentSpeed). Двигатель \(SportCar.statusOfenging.rawValue). Спойлер \(SportCar.Spoiler.rawValue)")
SportCar.activSport(activiti: .setSpoiler(spStat: .not_active))
SportCar.activSport(activiti: .speed(napr: .Up, speedValue: 100))
print("Автомобиль \(SportCar.typeAuto) марки \(SportCar.markaAuto) , дата производства \(SportCar.dataFromd) год, скорость \(SportCar.currentSpeed). Двигатель \(SportCar.statusOfenging.rawValue). Спойлер \(SportCar.Spoiler.rawValue)")


