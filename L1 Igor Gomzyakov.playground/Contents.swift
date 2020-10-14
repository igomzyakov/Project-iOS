import UIKit
import Darwin



//Решить квадратное уравнение.
// x2+4x+3=0
var a = 1, b = 4, c = 3
var i = pow(Double(b),2) // возводим переменную b в квадрат
//D=b2-4ac
let discriminant: Int = Int(i) - (4 * a * c) // находим дискриминант
let discriminant2 = pow(Double(discriminant),0.5) //возводим дискриминат в корень
    if (discriminant > 0){
        print("найдем 2 корня")
        _ = (-b + Int(discriminant2)) / 2 * a // находим 1 корень
        _ = (-b - Int(discriminant2)) / 2 * a // находим 2 корень
    }
    if (discriminant == 0){
        print("найдем 1 корень")
        _ = -b  / (2 * a) // находим 1 корень
    }
    if (discriminant < 0){
        print("Корней нет")
}
    
//Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
// находим гипотенузу
var leg1 = 20, leg2 = 30
var hypotenuse = pow(Double(leg1),2) + pow(Double(leg2),2) //возводим введеные числа в квадрат и складываем
var hypotenuse2:Double  = pow(Double(hypotenuse),0.5) // находим корень из суммы

// находим периметр треугольника
var perimeter:Int = Int(leg1) + Int(leg2) + Int(hypotenuse2)

// находим площадь треугольника
var area = leg1*leg2/2

// *Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через                             5 лет.
var deposit:Double = 5000
var percent:Double = 8
percent = percent / 100
var result1 = deposit + (deposit * percent)
var result2 = result1 + (result1 * percent)
var result3 = result2 + (result2 * percent)
var result4 = result3 + (result3 * percent)
var result5 = result4 + (result4 * percent)
var itogo: Int =  Int(result5) // cумма вклада через 5 лет
