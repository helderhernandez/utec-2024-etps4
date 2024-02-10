//
//  main.swift
//  Practica02_20240210
//
//  Created by MacOsX on 2/10/24.
//

import Foundation

let nombre:String
let apellido:String
let anioNacimiento:Int

print("Ingrese el nombre")
nombre = readLine()!

print("Ingrese el apellido")
apellido = readLine()!

print("Ingrese el anio de su nacimiento")
anioNacimiento = Int(readLine()!)!

var sussi = Persona(nombre, apellido, anioNacimiento)

print(sussi.toString())
//sueldo()

