//
//  clase3.swift
//  ejercicios-sumatorios-unidad1
//
//  Created by helder hernandez on 17/2/24.
//  Copyright © 2024 helder hernandez. All rights reserved.
//

import Foundation

var nombre:String = ""
var edad:Int = 0

// crear funciones sin parametros
func inicializar(){
    print("Ingrese su nombre")
    nombre = readLine()!
    
    print("Ingrese edad")
    edad = Int(readLine()!)!
}

func imprimir(){
    print("Nombre: \(nombre)\nEdad:\(edad)")
}

func esMayorEdad(){
    if(edad>=18){ print("es mayor de edad") }
    else { print("no es mayor de edad") }
}

func funciones(){
    inicializar()
    imprimir()
    esMayorEdad()
}

// crear funciones con parametros y return
func sumar(x:Int, y:Int)-> Int{
    return x+y
}

func restar(_ x:Int, _ y:Int)-> Int{
    return x-y
}

func funcionesConParametroRestorno(){
    var x:Int = 0
    var y:Int = 0
    
    print("Ingrese un numero entero")
    x = Int(readLine()!)!
    
    print("Ingrese otro numero entero")
    y = Int(readLine()!)!
    
    print("La suma es: \(sumar(x:x, y:y))")
    print("La resta es: \(restar(x, y))")
}

func clases(){
    var nombre:String = ""
    var apellido:String = ""
    var anioNacimiento:Int = 0
    
    print("Ingrese el nombre")
    nombre = readLine()!
    
    print("Ingrese el apellido")
    apellido = readLine()!
    
    print("Ingrese el anio de su nacimiento")
    anioNacimiento = Int(readLine()!)!
    
    var sussi = Persona(nombre, apellido, anioNacimiento)
    
    print(sussi.toString())
}
