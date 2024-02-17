//
//  SuperHeroe.swift
//  parcial2529162018
//
//  Created by helder hernandez on 17/2/24.
//  Copyright © 2024 helder hernandez. All rights reserved.
//

import Foundation

class SuperHeroe {
    var nombre: String
    var descripcion: String
    var capa:Bool
    
    init(nombre:String) {
        self.nombre = nombre
        self.descripcion = ""
        self.capa = false
    }
    
    func toString(){
        print("Nombre: \(nombre), Apellido: \(descripcion), Capa: \(capa)")
    }
}
