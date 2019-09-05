import UIKit

var x1: Double
var x2: Double
var D: Double

let a: Double = 4
let b: Double = -8
let c: Double = 3

D = pow(b, 2) - 4*a*c
print("Первое задание:")
if D > 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    x2 = (-b - sqrt(D)) / (2 * a)
    print("Ответ: х1 = \(x1); х2 = \(x2)")
} else if D == 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    print("Ответ: х1 = х2 = \(x1)")
} else {
    print("Уравнение не имеет решений")
}

let k: Double = 4
let l: Double = 5
var m = sqrt(pow(k,2)+pow(l, 2))
let p = (k + l + m)/2
var s = sqrt(p*(p-k)*(p-l)*(p-m))
var per = k+l+m
print("")
print("Второе задание:")
print("Гипотенуза треугольника равна \(m)")
print("Площадь треугольника равна \(s)")
print("Периметр треугольника равен \(p)")


var vklad: Double = 100
let procent: Double = 12
let srok = 5
print("")
print("Третье задание:")
for g in 1...srok {
    vklad = vklad + (vklad*procent)/100
    if g != srok {
    print("В \(g) год сумма вклада \(vklad)")
    } else {
    print("На момент закрытия счета сумма вклада \(vklad)")
    }
}

