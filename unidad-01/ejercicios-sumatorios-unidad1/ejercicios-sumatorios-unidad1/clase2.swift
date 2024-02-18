//
//  clase2.swift
//  ejercicios-sumatorios-unidad1
//
//  Created by helder hernandez on 17/2/24.
//  Copyright © 2024 helder hernandez. All rights reserved.
//

import Foundation

func estructuraSeleccion(){
    let numberOfMessage = 100
    if numberOfMessage > 10 {
        print("SALUDOS ETPS4 😃")
    }
    
    if numberOfMessage > 10 {
        print("SALUDOS ETPS4 XD")
    }else{
        print("SIGUE PROGRAMANDO")
    }
    
    let sueldo = 5000    
    if (sueldo > 3000) {
        print("PAGARA IMPUESTOS 🧐")
    }
    
    // calcular el promedio
    var notas = [5.1, 6.2, 7.3, 8.4, 9.5]
    var acumulado = 0.0
    acumulado += notas[0]
    acumulado += notas[1]
    acumulado += notas[2]
    acumulado += notas[3]
    acumulado += notas[4]
    
    let promedio = acumulado / 5
    if (promedio >= 7){
        print("PASASTE DE GRADO")
    }else{
        print("REPROBASTE DE GRADO")
    }
}

func estruturaRepetitivas(){
    // utilizar ciclo for
    let names = ["Swift", "UTEC", "ETPS4"]
    
    for name in names{
        print("Names: \(name)")
    }
    
    // utilizar ciclo for para un array con indice
    let namesWithNumber = [10: "Swift", 20: "UTEC"]
    
    for (number, name) in namesWithNumber{
        print("\(number) \(name)")
    }
}
