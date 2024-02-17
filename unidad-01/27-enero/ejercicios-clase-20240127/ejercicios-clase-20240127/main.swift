//
//  main.swift
//  ejercicios-clase-20240127
//
//  Created by helder hernandez on 27/1/24.
//  Copyright © 2024 helder hernandez. All rights reserved.
//

import Foundation

// *****************************************************************
// mutabilidad: variables y contantes
// crear una variable y una constante
var miVariable:String
let miConstante:String

miVariable = "soy una variable"     // mutable
miConstante = "soy una constante"   // inmutables

print(miVariable)
print(miConstante)

// error compilation      miConstante = "jaja"

// *****************************************************************
// colecciones
var miColeccion = ["mad men", "better call saul", "talking dead", "humans"]
print("count collection: \(miColeccion.count)")

// agregando elementos
miColeccion += ["preacher"]
miColeccion += ["the killing", "happy feat"]
miColeccion.append("avatar")
miColeccion.insert("interestalar", at: 1)

print("count collection: \(miColeccion.count)")

// sustituyendo el rango 1-2
print("item 1 y 2")
print(miColeccion[1])
print(miColeccion[2])

miColeccion[1...2] = ["prision break","breaking bad"]

print("item 1 y 2")
print(miColeccion[1])
print(miColeccion[2])

// borrando elementos
miColeccion.remove(at: 1)
miColeccion.removeLast()

print("count collection: \(miColeccion.count)")
