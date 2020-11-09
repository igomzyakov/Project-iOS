import Foundation


enum Brand{
     case Bmw, Scania, Nissan
}
enum Actions{ // двигатель
     case start, stop
}
enum Glass{ //окна
     case open, close
}
enum TruckAction {
    case load, remove //груз
    case ope, clos //спойлер
}
enum EngineType{ //топливо
    case diesel, petrol
}
enum RaceType{ // назначение
    case drift, drag
    }
enum aero{
    case open, close // спойлер
}
    
class Car {
    var brand: Brand //марка авто
    var year: Int //год выпуска
    var load: Int //емкость богажника
    var enginestarting: Actions //запущен ли двигатель
    var window: Glass //открыть/закрыть окна
    init (brand: Brand, year: Int, load: Int, enginestarting: Actions, window: Glass) {
        self.brand = brand
        self.year = year
        self.load = load
        self.enginestarting = enginestarting
        self.window = window
        }
    func handleTruckAction(action: TruckAction ){
        print("")
}
}
class TrunkCar: Car {
    var fuel: EngineType
    init(fuel: EngineType) {
        self.fuel = fuel
        super.init(brand: .Scania, year: 1980, load: 20000, enginestarting: .start, window: .close)
    }
    override func handleTruckAction(action: TruckAction){
        switch action {
        case  .load:
        print("Загрузили автомобиль")
        case .remove:
        print("Разгузили автомобиль")
        case .ope:
        print("Открыли люк")
        case.clos:
        print("Закрыли люк")
        }
        
}
}
    class SportСar: TrunkCar {
        var appointment: RaceType
        init(appointment: RaceType){
        self.appointment = appointment
            super.init(fuel: .petrol)
    }
        override func handleTruckAction(action: TruckAction){
            switch action {
            case  .load:
            print("Загрузили автомобиль")
            case .remove:
            print("Разгузили автомобиль")
            case .ope:
            print("Открыли люк")
            case.clos:
            print("Закрыли люк")
            }
        }
}

let car = Car(brand: .Bmw, year: 2014, load: 1800, enginestarting: .stop, window: .open)
let trunkCar = TrunkCar(fuel: .diesel)
let sportCar = SportСar(appointment: .drift)
trunkCar.handleTruckAction(action: .load)
sportCar.handleTruckAction(action: .ope)


