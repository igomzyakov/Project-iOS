import Foundation

enum EngineState{
    case isOn, isOff
}

enum Glass{
     case open, close
}

enum Brand{
     case Bmw, Scania
}



protocol Car: AnyObject {
    var brand: Brand { get }
    var year: Int { get }
    func handleEngine(action: EngineState )
}

extension Car {
    func handleEngine(action: EngineState){
    switch action {
    case.isOn:
        print("Двигатель включен")
    case.isOff:
        print("Двигатель выключен")
    }
     
}
}

class SportCar: Car{
    var brand: Brand
    var year: Int = 1970
    var hp: Int = 300
    init (brand:Brand, year: Int, hp:Int){
    self.brand=brand
    self.year=year
    self.hp = hp
    }
}
extension SportCar:CustomStringConvertible {
    var description: String {
        return "У этого автомобиля мощность двигателя \(hp) л.c., год выпуска \(year) и это \(brand)"
    }
}



class TrunkCar: Car {
    var brand: Brand
    var year: Int
    var wheels: Int
    var handleEngine: EngineState
    init (year: Int, brand: Brand,wheels: Int,handleEngine:EngineState  ){
    self.brand = brand
    self.year =  year
    self.wheels =  wheels
    self.handleEngine = handleEngine
}
}


extension TrunkCar: CustomStringConvertible{
    var description: String {
        return "Этот автомобиль \(year) года выпуска, у него \(wheels) колес и это \(brand), двигатель \(handleEngine)"
    }
    
}

let sportCar = SportCar(brand: .Bmw, year: 2003, hp: 300)
print (sportCar.description)
let trunkCar = TrunkCar(year: 2015, brand: .Scania, wheels: 8, handleEngine: .isOff)
print (trunkCar.description)
trunkCar.handleEngine(action: .isOff)
sportCar.handleEngine(action: .isOn)



