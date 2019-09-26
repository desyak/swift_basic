import UIKit
//import Foundation


/* struct legkAuto{
 let typeAuto: String = "Легковой"
 var markaAuto: String = ""
 var dataFromd: String = "01:01:01"
 var obiemBagageTotal: Int = 0
 var statusOfenging: String = ""
 var statusOfwindows: Bool = false
 var obiemBagageUsed: Int = 0
 enum stat: String {
 case On = "Working"
 case Off = "Not Working"
 }
 mutating func withBagage(directionWithBag: String, weigth: Int){
 if directionWithBag == "In" {
 self.obiemBagageUsed += weigth
 } else {
 self.obiemBagageUsed -= weigth
 }
 }
 init (marka: String, dataAuto: String,obiemB: Int ) {
 self.obiemBagageTotal = obiemB
 self.dataFromd = dataAuto
 self.markaAuto = marka
 }
 mutating func actEng(st: stat){
 self.statusOfenging = st.rawValue
 }
 }
 
 var gaz=legkAuto(marka: "GAZ", dataAuto: "2017", obiemB: 501)
 print(gaz)
 gaz.withBagage(directionWithBag: "Out", weigth: 100)
 print(gaz)
 
 
 enum direction: String {
 case In = "In"
 case Out = "Out"
 }
 enum act {
 case engine(status: stat)
 case window(status: Bool)
 case bagage(napr: direction, withWeigth: Int)
 
 }
 
 var action = act.self
 action.window(status: true)
 action.bagage(napr: "In", withWeigth: 20)
 
 print(gaz)
 */
//  Mark -

// Mark - Enum

enum direction {
    case In
    case Out
}

enum engineStat {
    case on
    case off
}

struct legkAuto{
    let typeAuto: String = "Легковой"
    var markaAuto: String = ""
    var dataFromd: String = "01:01:01"
    var obiemBagageTotal: Int = 0
    var statusOfenging: String = ""
    var statusOfwindows: Bool = false
    var obiemBagageUsed: Int = 0
    var engine: engineStat = .off
    //    enum stat: String {
    //        case On = "Working"   Это мне кажется тут лишнее
    //        case Off = "Not Working"
    //    }
    
    init (marka: String, dataAuto: String, obiemB: Int ) {
        self.obiemBagageTotal = obiemB
        self.dataFromd = dataAuto
        self.markaAuto = marka
    }
    
    mutating func actEngSwift(){ // завод двигателя?
        if self.engine == .on {
            self.engine = .off
        } else {
            self.engine = .on
        }
    }
    mutating func withBagage(directionWithBag: direction, weigth: Int){ //если ты хочешь проверять в какую сторону едет авто, так будет правильнее
        if directionWithBag == direction.In {
            self.obiemBagageUsed += weigth
        } else {
            self.obiemBagageUsed -= weigth
        }
    }
}

var gaz=legkAuto(marka: "GAZ", dataAuto: "2017", obiemB: 501)
gaz.actEngSwift()
print (gaz)

//
//enum direction: String {
//    case In = "In"
//    case Out = "Out"
//}
//enum act {
//    case engine(status: stat)
//    case window(status: Bool)
//    case bagage(napr: direction, withWeigth: Int)
//
//}
