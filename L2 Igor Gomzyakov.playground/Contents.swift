import UIKit

//1.Написать функцию, которая определяет, четное число или нет.
func even (element: Int) -> Int{
    let element = element
    if element % 2 == 0 {
    print ("Это четное число")
    }
    else if element % 2 != 0 {
    print ("Это не четное число")
    }
    return (element)
}
even(element: 8)

//2.Написать функцию, которая определяет, делится ли число без остатка на 3.
func remainder (element: Int) -> Int{
    let element = element
    if element % 3 == 0 {
    print ("Число делится без остатка")
    }
    else if element % 3 != 0 {
        print ("Число не делится без остатка")
    }
    return (element)
}
remainder(element: 6)

//3. Создать возрастающий массив из 100 чисел.
var values = Array(0...99)
print (values)

//4. Удалить из этого массива все четные числа
var array1 = values
var index1 = 0

while array1.count > 0 && index1 < array1.count {
    if array1[index1] % 2 == 0 {
        array1.remove(at: index1)
        index1 -= 1
    }
    index1 += 1
}
print(array1)

//4. Удаляем из массива числа которые не делятся на 3

var array = values
var index = 0

while array.count > 0 && index < array.count {
    if array[index] % 3 != 0 {
        array.remove(at: index)
        index -= 1
    }
    index += 1
}
print(array)

// Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

func fibonacci1(n: Int) -> [Int] {
    assert(n > 1)
    var array = [0, 1]
    while array.count < n {
        array.append(array[array.count - 1] + array[array.count - 2])
    }
    return array
}

fibonacci1(n: 50)

var d = 10
repeat{
    print ("Привет Игорь \(d)")
    d += 1
}while d < 10

