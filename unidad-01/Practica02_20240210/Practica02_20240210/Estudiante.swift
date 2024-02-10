//
//  Estudiante.swift
//  Practica02_20240210
//
//  Created by MacOsX on 2/10/24.
//

import Foundation

class Estudiante:Persona {
    var expediente:String
    
    init(_ nombre: String,
         _ apellido: String,
         _ anioNacimiento: Int,
         _ expediente: String
    ) {
        self.expediente = expediente
        super.init(nombre, apellido, anioNacimiento)
    }
    
    func imprimir() -> String{
        return "\(self.toString()), expediente: \(self.expediente)"
    }
}
