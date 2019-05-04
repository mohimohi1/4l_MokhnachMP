import UIKit

enum Type {
    case universal, sedan, hatchback, trunk
}

enum Doors {
    case three, four, five, two
}

enum Windowsstate {
    case open, close
}

enum Enginestate {
    case start, stop
}

enum Doorsstate {
    
    case open, close
}



class Car {
    
    var brand:String
    var type:Type
    var weight:Double
    var color:String
    var volume:Double
    var doors:Doors
    
    
    
    func setType (doors:Doors) {
        
        switch doors {
            
        case .three:
            type = .hatchback
        case .four:
            type = .sedan
        case .five:
            type = .universal
        default:
            break
        }
        
        
    }
    
    init (brand:String, type:Type, weight:Double, color:String, volume:Double, doors:Doors) {
        self.brand = brand
        self.type = type
        self.weight = weight
        self.color = color
        self.volume = volume
        self.doors = doors
    }
    
    
}

class sportCar:Car {
    
    
    enum Drive {
        case front, back, full
    }
    
    enum Engine {
        case v8, v12
    }
    
    enum Handbrakestate {
        case open, close
    }
    
    
    var maxspeed:Double
    var driveunit:Drive
    var enginetype:Engine
    var handbrake:Handbrakestate
    
    
    init(maxspeed: Double, driveunit:Drive, enginetype:Engine, handbrake: Handbrakestate) {
        
        self.maxspeed = maxspeed
        self.driveunit = driveunit
        self.enginetype = enginetype
        self.handbrake = handbrake
        super.init(brand: "bmw", type: .sedan, weight:2.3, color: "black", volume: 2.3, doors: .four)
        self.brand = brand
        self.type = type
        self.weight = weight
        self.color = color
        self.volume = volume
        self.doors = doors
    }
    
    override func setType(doors: Doors) {
        
        switch doors {
        case .four:
            type = .sedan
            print("Седан")
        case.five:
            print("Спорткар не имеет 5-дверную модификацию")
        case .three:
            type = .hatchback
            print("Хэтчбек")
        case .two:
            print("Спорткар не имеет 2х дверную модификацию")
        }
    }
    
    func handbraken (handbrake:Handbrakestate) {
        if handbrake == .close {
            print ("Снимите автомобиль с ручника и начинайте движение")
        }else {
            print("Можно начинать движение")
        }
        
    }
    
}




class trunkCar:Car {
    
    enum typeofkuzov {
        case open,close
    }
    
    enum typeofmotor {
        
        case engine, dizel, gas
    }
    
    var pritsep:String
    var wheels:Int
    var typeof:typeofkuzov
    var motor:typeofmotor
    
    
    init (pritsep:String, wheels:Int, typeof:typeofkuzov,motor:typeofmotor ) {
        
        self.motor = motor
        self.pritsep = pritsep
        self.typeof = typeof
        self.wheels = wheels
        super.init(brand: "Volvo", type: .universal, weight: 16, color: "black", volume: 3.4, doors: .three)
        self.brand = brand
        self.type = type
        self.weight = weight
        self.color = color
        self.volume = volume
        self.doors = doors
    }
    
    // Переопроедение метода setType
    
    override func setType(doors: Doors) {
        
        switch doors {
        case .five:
            print("Грузовой автомобиль не имеет 5дверную модификацию")
        case .four:
            print("Грузовой автомобиль не имеет 4дверную модификацию")
        case.two:
            type = .trunk
        default:
            break
        }
    }
    
    func fulltoFuel (motor:typeofmotor) {
        
        switch motor {
        case .engine:
            print("Залейте бензин в бензобак")
        case .dizel:
            print("Необходимо воспользоваться дизельным топливом")
        case .gas:
            print("Для заправки воспользуйтесь газом")
        }
        
    }
    
    
    
    
}

// Выведение экземпляров (и их свойств на консоль)

var bmw = sportCar(maxspeed: 300.0, driveunit: .front, enginetype: .v12, handbrake: .open)


bmw.maxspeed
bmw.driveunit
bmw.setType(doors: .two)
bmw.handbraken(handbrake: .close)

print("Спорткар BMW имеет максимальную скорость \(bmw.maxspeed) , тип двигателя автомобиля \(bmw.enginetype) , текущее состояние ручной коробки \(bmw.handbrake), тип привода автомобиля \(bmw.driveunit)")

var volvo = trunkCar(pritsep: "Отсутствует", wheels: 6, typeof: .close, motor: .dizel)

volvo.pritsep
volvo.fulltoFuel(motor: .dizel)

print("Грузовой автомобиль Volvo имеет прицеп:\(volvo.pritsep), количество колес:\(volvo.wheels), кузов: \(volvo.typeof) , тип топлива \(volvo.motor)")


