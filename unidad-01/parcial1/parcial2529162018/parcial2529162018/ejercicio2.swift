//
//  ejercicio2.swift
//  parcial2529162018
//
//  Created by helder hernandez on 17/2/24.
//  Copyright © 2024 helder hernandez. All rights reserved.
//

import Foundation

/*
 NOTA: EJERCICIOS PARES
 
 Si x, y, z son variables de tipo double con valores
 x= 88, y = 3.5, z = -5.2,
 determina el valor de las siguientes expresiones aritméticas.
 Obtén el resultado de cada expresión con un máximo de cuatro decimales.
 */

// consts
let x:Double = 88
let y:Double = 3.5
let z:Double = -5.2

// variables
var result:Double = 0

// functions
func printResultWithFormat(_ result:Double){
    print("Result: ", String(format: "%.2f", result))
}

func solveA(){
    // a)   x + y + z
    print("\na)   x + y + z")
    result = x + y + z
    printResultWithFormat(result)
}

func solveB(){
    // b)   2 * y + 3 * (x – z)
    print("\nb)   2 * y + 3 * (x – z)")
    result = 2 * y + (3 * (x - z))
    printResultWithFormat(result)
}

func solveC(){
    // c)   x / y
    print("\nc)   x / y ")
    result = x / y
    printResultWithFormat(result)
}

func solveD(){
    // d)   x % y
    print("\nd)   x % y")
    result = x.truncatingRemainder(dividingBy: y)
    printResultWithFormat(result)
}

func solveE(){
    // e)   x / (y + z)
    print("\ne)   x / (y + z)")
    result = x / (y + z)
    printResultWithFormat(result)
}

func solveF(){
    // f)   (x / y) + z
    print("\nf)   (x / y) + z")
    result = (x / y) + z
    printResultWithFormat(result)
}

func solveG(){
    // g)   2 * x / 3 * y
    print("\ng)   2 * x / 3 * y")
    result = 2 * x / 3 * y
    printResultWithFormat(result)
}

func solveH(){
    // h)   2 * x / (3 * y)
    print("\nh)   2 * x / (3 * y)")
    result = 2 * x / (3 * y)
    printResultWithFormat(result)
}

func solveI(){
    // i)   x * y % z
    print("\ni)   x * y % z")
    result = (x * y).truncatingRemainder(dividingBy: z)
    printResultWithFormat(result)
}

func solveJ(){
    // j)   x * (y % z)
    print("\nj)   x * (y % z)")
    
    result = x * y.truncatingRemainder(dividingBy: z)
    printResultWithFormat(result)
}

func solveK(){
    // k)   3 * x – z – 2 * x
    print("\nk)   3 * x – z – 2 * x")
    result = 3 * x - z - 2 * x
    printResultWithFormat(result)
}

func solveL(){
    // l)   2 * x / 5 % y
    print("\nl)   2 * x / 5 % y")
    result = (2 * x / 5).truncatingRemainder(dividingBy: y)
    printResultWithFormat(result)
}

func solveM(){
    // m)   x - 100 % y % z
    print("\nm)   x - 100 % y % z")
    result = (x - 100).truncatingRemainder(dividingBy: y).truncatingRemainder(dividingBy: z)
    printResultWithFormat(result)
}

func solveN(){
    // n)   x - y - z * 2
    print("\nn)   x - y - z * 2")
    result = x - y - z * 2
    printResultWithFormat(result)
}

func ejercicio2(){
    print("x= 88, y = 3.5, z = -5.2")
    
    solveA()
    solveB()
    solveC()
    solveD()
    solveE()
    solveF()
    solveG()
    solveH()
    solveI()
    solveJ()
    solveK()
    solveL()
    solveM()
    solveN()
}

func solveX(){
    // a)   x + y + z
    print("\na)   x + y + z")
    result = x + y + z
    printResultWithFormat(result)
}
