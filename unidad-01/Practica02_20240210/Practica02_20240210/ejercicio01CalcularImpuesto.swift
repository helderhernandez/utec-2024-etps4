//
//  ejercicio01CalcularImpuesto.swift
//  Practica02_20240210
//
//  Created by MacOsX on 2/10/24.
//

import Foundation

func sueldo(){
    var sueldo:Double
    var porcentaje:Double
    var mensaje:String
    var impuesto:Double
    
    print("Ingrese su sueldo:")
    sueldo = Double(readLine()!)!
    
    mensaje = ""
    porcentaje = 0
    
    if(sueldo <= 500){
        porcentaje = 0.05
        mensaje = "Pagara impuesto del 5%"
    }else if(sueldo > 500 && sueldo < 800){
        porcentaje = 0.1
        mensaje = "Pagara impuesto del 10%"
    }else{
        porcentaje = 0.13
        mensaje = "Pagara impuesto del 13%"
    }
    
    impuesto = calculoImpuesto(sueldo, porcentaje)
    
    print("\(mensaje), monto del impuesto es \(impuesto)")
    
}

func calculoImpuesto(_ sueldo:Double, _ impuesto:Double) -> Double{
    return sueldo * impuesto
}
