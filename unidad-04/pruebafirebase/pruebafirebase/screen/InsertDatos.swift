//
//  InsertDatos.swift
//  pruebafirebase
//
//  Created by MacOsX on 5/11/24.
//

import SwiftUI

struct InsertDatos: View {
    @State var nombre : String = ""
    @State var apellido : String = ""
    @State var edad : String = ""
    @State var genero : String = ""

    var body: some View {
        ScrollView{
            TextField("Ingrese su nombre:", text: $nombre)
            TextField("Ingrese su apellido:", text: $apellido)
            TextField("Ingrese su edad:", text: $edad)
            TextField("Ingrese su genero:", text: $genero)
        }
    }
}

struct InsertDatos_Previews: PreviewProvider {
    static var previews: some View {
        InsertDatos()
    }
}
