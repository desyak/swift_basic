import UIKit

struct legkAuto{
    let typeAuto: String = "Легковой"
    var markaAuto: String = ""
    var dataFromd: String = "01:01:01"
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
    mutating func actEng(activiti: act){
        switch activiti {
        case .engine:
            self.statusOfenging = st
            
        }
    mutating func withBagage(directionWithBag: direction, weigth: Int){
        switch directionWithBag {
        case .in:
            self.obiemBagageUsed += weigth
        case .out:
            self.obiemBagageUsed -= weigth
        }
    }
    init (marka: String, dataAuto: String,obiemB: Int ){
        self.obiemBagageTotal = obiemB
        self.dataFromd = dataAuto
        self.markaAuto = marka
        self.statusOfenging = statusOfenging
    }

}

var gaz=legkAuto(marka: "GAZ", dataAuto: "2017", obiemB: 501)
print(gaz)
gaz.withBagage(directionWithBag: "In", weigth: 100)
print(gaz)







