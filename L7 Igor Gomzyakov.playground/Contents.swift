import Foundation
import UIKit
let heightToRideAlone = 120.0
let heightToRideWithAdult = 100.0
var height = 125.0
if height >= heightToRideAlone {
print("Твоего роста хватает, чтобы кататься на горках самостоятельно.")
} else if height >= heightToRideWithAdult {
 print("На эти горки тебе можно в сопровождении взрослого.")
} else {
 print("Сожалеем. Тебе нельзя на эти горки.")
}

var studentGrade = 7
var studentProject = "Нужно определить"
switch studentGrade {
case 1:
studentProject = "Страна по выбору ученика"
case 2:
studentProject = "Соревнования собачьих упряжек на Аляске"
case 3:
studentProject = "Американские индейцы"
case 4:
studentProject = "Штат по выбору ученика"
case 5:
studentProject = "Колониальные времена"
case 6, 7, 8:
studentProject = "Выбор ученика"
default:
studentProject = "Не определено"
}
print(studentGrade)

for number in 1 ... 10 {
print("Привет, меня зовут Колин.") // Введите здесь свое имя!
print("Теперь значение числа равно \(number). \n")
}


let kidsInClass = ["Гретхен", "Кристина", "Джимми", "Маркус",
"Хелен", "Эрик", "Алекс"]
for kidsName in kidsInClass {
print("Доброе утро, \(kidsName)!")
}


import Foundation
let numberIAmThinkingOf = 15
var currentGuess = -1
print("Загадал число между 1 и 20. Угадай его.")
while currentGuess != numberIAmThinkingOf {
// Угадывание случайного числа
currentGuess = Int(arc4random_uniform(20)) + 1
print("Хмм… дай подумать, \(currentGuess)?")
}
// Правильный ответ
print("Угадал! Правильный ответ – \(currentGuess)!")

for count in 1 ... 10 {
// Блок A
if count % 2 == 0 {
 // Блок B
 var starString = ""
    for _ in 1 ... count {
 // Блок C
 starString += "*"
 }
print (starString)
} else {
 // Блок D
 var dashString = ""
    for _ in 1...count {
 // Блок E
 dashString += "-"
 }
 print(dashString)
}
}



let Morning = false
var greeting = ""
if Morning {
greeting = "Доброе утро"
} else {
greeting = "Добрый день"
}
print(greeting)


let defaultLunch = "пицца"
var specialLunch: String?
var myLunch = specialLunch ?? defaultLunch
print("Мой обед в понедельник - \(myLunch). ")
specialLunch = "пирог с мясом"
myLunch = specialLunch ?? defaultLunch
print("Мой обед сегодня - \(myLunch).")
