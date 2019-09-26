import UIKit

enum stat: String {
    case On = "Заведен"
    case Off = "Выключен"
}
enum light: String {
    case On = "Горят"
    case Off = "Не горят"
}

protocol Car {
    var carEngStat: stat {get set}
    var carLigthStat: light {get set}
    var carType: String {get}
    var carName: String {get}
    var carYear: String {get}
    func carStatus()
    
}

extension Car {
    
    mutating func carEnine(status: stat)  {
        switch status {
        case .On:
            carEngStat = stat.On
        case .Off:
            carEngStat = stat.Off
        }
    }

    mutating func carLigth(status: light)  {
        switch status {
        case .On:
            carLigthStat = light.On
        case .Off:
            carLigthStat = light.Off
        }
    }
}

class truckCar: Car {
    func carStatus() {
        print("\(carType) автомобиль, марки \(carName), \(carYear) года выпуска")
    }
    
    var carMaxBagage: Int
    var carEngStat: stat
    var carLigthStat: light
    var carType: String
    var carName: String
    var carYear: String
    
    
    init(carEngStat: stat, carLigthStat: light, carType: String, carName: String, carYear: String, carMaxBagage: Int) {
        self.carEngStat = carEngStat
        self.carLigthStat = carLigthStat
        self.carType = carType
        self.carName = carName
        self.carYear = carYear
        self.carMaxBagage = carMaxBagage
    }
}

class sportCar: Car {
    func carStatus() {
        print("\(carType) автомобиль, марки \(carName), \(carYear) года выпуска")
    }
    
    var carMaxSpeed: Int
    var carEngStat: stat
    var carLigthStat: light
    var carType: String
    var carName: String
    var carYear: String
    
    
    init(carEngStat: stat, carLigthStat: light, carType: String, carName: String, carYear: String, carMaxSpeed: Int) {
        self.carEngStat = carEngStat
        self.carLigthStat = carLigthStat
        self.carType = carType
        self.carName = carName
        self.carYear = carYear
        self.carMaxSpeed = carMaxSpeed
    }
}

extension sportCar: CustomStringConvertible {
    var description: String {
        return "\(carType) автомобиль, марки \(carName), \(carYear) года выпуска. У автомобиля фары \(carLigthStat.rawValue), а двигатель \(carEngStat.rawValue). Максимальная скорость автомобиля \(carMaxSpeed) км/ч."
    }
    

    
    
}

extension truckCar: CustomStringConvertible {
    var description: String {
        return "\(carType) автомобиль, марки \(carName), \(carYear) года выпуска. У автомобиля фары \(carLigthStat.rawValue), а двигатель \(carEngStat.rawValue). Максимальная грузоподъемность \(carMaxBagage) кг."
    }
    
    
}

var auto1 = sportCar(carEngStat: .On, carLigthStat: .Off, carType: "Легковой", carName: "Mersedes", carYear: "2015", carMaxSpeed: 200  )
print(auto1)
auto1.carStatus()
auto1.carEnine(status: .Off)
print(auto1)

var auto2 = truckCar(carEngStat: .On, carLigthStat: .Off, carType: "Грузовой", carName: "МАЗ", carYear: "1990", carMaxBagage: 5000 )
print(auto2)
auto2.carLigth(status: .On)
print(auto2)


