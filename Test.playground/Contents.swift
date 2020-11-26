import Foundation


/*func volumeOfBox(_ side1: Int, _ side2: Int, _ side3: Int)  -> Int {
let volume = side1 * side2 * side3
return volume
}

var pit1 = volumeOfBox(10, 20, 30)
var pit2 = volumeOfBox(45, 32, 12)

if pit1 > pit2 {
print("Коробка 1 больше.")
} else if pit1 < pit2 {
print("Коробка 2 больше.")
} else {
print("Коробки имеют одинаковый размер.")
}


func averageOf(_ scores:[Int]) -> Int {
var sum = 0
for score in scores {
 sum += score
}
if scores.count > 0 {
return sum / scores.count
} else {
return 0
}
}


var masca = [1,2,3,4,5]

averageOf(masca)
averageOf([])

class BirthdayCake {
    let birthdayAge: Int
    var birthdayName: String
    var feeds = 20
    func message( shouldIncludeAge: Bool) -> String {
         if shouldIncludeAge {
        return "С днем рождения, \(birthdayName)! Тебе \(rightYear())."
         }
        return "С днем рождения, \(birthdayName)!"
    }
        
    func rightYear() -> String {
        var year = "лет"
        let remainder = birthdayAge % 10
        switch remainder {
        case 1:
         if birthdayAge != 11{
         year = "год"
         }
        case 2,3,4:
         if birthdayAge != 12 && birthdayAge != 13 && birthdayAge != 14 {
         year = "года"
         }
        default:
         break
        }
        return "\(birthdayAge) " + year
        }
        
    init() {
    birthdayAge = 32
    birthdayName = "Иван"
    print("\(birthdayName), твой торт готов!")
    }
    init(age: Int, name: String) {
    birthdayAge = age
    birthdayName = name
    print("\(birthdayName), твой торт готов!")
    
}
}


var newCake = BirthdayCake()
newCake.message(shouldIncludeAge: false)
newCake.rightYear()




class RocketShip {
    var destination: String
    init(Somedist: String) {
   destination = Somedist
}
}

let myRocketShip = RocketShip(Somedist: "Лиза")
myRocketShip.destination


class FarmAnimal {
var name = "домашнее животное"
var numberOfLegs = 4
func sayHello() -> String {
    return "Привет, я домашнее животное!"
    }
    func description() {
            print("Я \(name), и у меня \(numberOfLegs) ноги.")
    }
    }

class Sheep: FarmAnimal {
override init() {
super.init()
name = "овца"
}
override func sayHello() -> String {
 return "Бе-е-е"
}
override func description() {
super.description()
print("Из моей шерсти делают одеяла.")
}
}

let Ovca = Sheep()
Ovca.sayHello()
Ovca.description()

class Pig: FarmAnimal {
    override init() {
    super.init()
    name = "Свинья"
    }
    override func sayHello() -> String {
     return "Хрю-Хрю"
    }
    override func description() {
    super.description()
    print("из меня делают тушенку.")
    }
}
let pig = Pig()
pig.sayHello()
pig.description()

class Chicken: FarmAnimal {
var numberOfEggs = 0
 override init() {
 super.init()
 name = "chicken"
numberOfLegs = 2
}
override func sayHello() -> String {
 return "Кудах-тах-тах"
}
override func description() {
 super.description()
 print("Я откладываю яйца.")

if numberOfEggs == 1 {
 print("У меня есть для тебя одно яйцо.")
 } else if numberOfEggs > 0 {
 print("У меня есть для тебя \(numberOfEggs) яиц.")
 }
}
func layAnEgg() {
 numberOfEggs += 1
}
func giveUpEggs() -> Int {
 let eggs = numberOfEggs
 numberOfEggs = 0
 return eggs
}
}


let chicken1 = Chicken()
chicken1.layAnEgg()
let chicken2 = Chicken()
chicken2.layAnEgg()
chicken2.layAnEgg()



let animals = [Sheep(), chicken1, chicken2, Sheep(), Chicken(),Sheep(), Pig()]

for animal in animals {
if animal is Sheep {
 print("Вот что говорит моя овца: \(animal.sayHello())")
   } else if animal is Chicken {
 print("Вот что говорят мои куры: \(animal.sayHello())")
   } else if animal is Pig {
 print("А вот и моя свинья: \(animal.sayHello())")
}
}


var myAge = 14
var yourAge = myAge
print("Мне \(myAge) лет, а тебе - \(yourAge)")
yourAge = 15
print("Теперь мне \(myAge) лет, а тебе - \(yourAge)")

class Kid {
var age: Int
init(age: Int) {
self.age = age
}
}
var finn = Kid(age: 9)
var nathan = finn
print("Натану - \(nathan.age) лет, Финну - \(finn.age)")

nathan.age = 11
print("Теперь Натану \(nathan.age) лет, и Финну тоже \(finn.age) ")
*/

struct Couch {
var numberOfCushions = 3
func description() -> String {
 return "У этой кушетки \(numberOfCushions) подушки."
}
}

var myFirstCouch = Couch()
var mySecondCouch = myFirstCouch
myFirstCouch.description()
mySecondCouch.description()
mySecondCouch.numberOfCushions = 4
myFirstCouch.description()
mySecondCouch.description()
