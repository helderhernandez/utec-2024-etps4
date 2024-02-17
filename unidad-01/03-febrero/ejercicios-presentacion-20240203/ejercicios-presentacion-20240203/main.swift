//
//  main.swift
//  ejercicios-presentacion-20240203
//
//  Created by helder hernandez on 17/2/24.
//  Copyright © 2024 helder hernandez. All rights reserved.
//

import Foundation

/*
 Ingresar el sueldo de una persona, si supera los $3000
 mostrar un mensaje en la salida indicando que debe
 abonar impuestos
 */
print("************ start: ejercicio 1 ************")

var sueldo:Double

print("ingrese sueldo:")
sueldo = Double(readLine()!)!

if (sueldo > 3000) {
    print("PAGARA IMPUESTOS 🧐")
}

print("")
print("************ end: ejercicio 1 ************")

/*
 Se declaran cinco notas de un alumno, si el promedio
 es mayor o igual a siete mostrar un mensaje ”Aprobado
 ETPS4”.
 */
print("\n************ start: ejercicio 2 ************")
// calcular el promedio
var notas = [5.1, 6.2, 7.3, 8.4, 9.5]
var acumulado = 0.0
acumulado += notas[0]
acumulado += notas[1]
acumulado += notas[2]
acumulado += notas[3]
acumulado += notas[4]

var promedio = acumulado / 5

if (promedio >= 7){
    print("aprobado etps4")
}
print("************ end: ejercicio 2 ************")
