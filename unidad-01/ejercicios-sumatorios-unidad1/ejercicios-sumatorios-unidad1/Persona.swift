//
//  Persona.swift
//  Practica02_20240210
//
//  Created by MacOsX on 2/10/24.
//

import Foundation

class Persona {
    let nombre:String
    let apellido:String
    let anioNacimiento:Int
    
    init(){
        self.nombre = ""
        self.apellido = ""
        self.anioNacimiento = 0
    }
    
    init(_ nombre:String, _ apellido:String, _ anioNacimiento:Int){
        self.nombre = nombre
        self.apellido = apellido
        self.anioNacimiento = anioNacimiento
    }
        
    func toString()->String{
        let edad = calcularEdad()
        return "Nombre completo: \(self.nombre) \(self.apellido), edad: \(edad)"
        //return "Hola ".appending(self.nombre.appending(" ".appending(self.apellido)))
    }
    
    func calcularEdad()-> Int{
        let date = Date()
        let calendar = Calendar.current

        let year = calendar.component(.year, from: date)
        
        return year - self.anioNacimiento
    }
}
