import UIKit


/*Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
Инициализировать несколько экземпляров структур. Применить к ним различные действия.
Вывести значения свойств экземпляров в консоль.*/

enum Car: String{ // виды автомобилей
    case SportCar = "Ferrari"
    case TrunkCar = "Scania"
}

enum Actions: String{ // двигатель
    case start = "включенным двигателем"
    case stop = "выключенным двигателем"
}
    
enum Glass: String{ //окна
    case open = "открытыми окнами"
    case close = "закрытыми окнами"
}
    
enum Juggage: String{ // багажник
    case submerge = "погрузили"
    case unload = "выгрузили"
}
    
enum Capacity: String{ //объем
    case body = "кузова"
    case trunk = "багажника"
    }



struct Options {
    var brand: Car //марка авто
    var year: Int //год выпуска
    var trunk: Int //объем богажника
    var enginestarting: Actions //запущен ли двигатель
    var window: Glass //открыть/закрыть окна
    var loadedtrunk: Juggage //заполненный объем багажника
    var luggage: Capacity //емкость
    
   
    /*init (year:Int, trunk: Int){
        self.brand
        self.year = year
        self.trunk = trunk
        self.enginestarting
        self.window
        self.loadedtrunk
        self.luggage */
        
    
    func auto (year: Int){
        print("""
    Автомобиль \(self.brand.rawValue), \(year) года выпуска, c объемом \(self .luggage.rawValue) \(self .trunk) литров, с \(self .enginestarting.rawValue), с \(self.window.rawValue), \(self .loadedtrunk.rawValue) 200 литров
    """)
    
}
}


var cars = Options (brand: .SportCar, year: 1978, trunk: 300, enginestarting: .start, window: .close, loadedtrunk: .submerge, luggage: .trunk)
var freight = Options (brand: .TrunkCar, year: 2012, trunk: 20000, enginestarting: .stop, window: .open, loadedtrunk: .unload, luggage: .body)


cars.auto(year: 1956)
freight.auto(year: 2020)


