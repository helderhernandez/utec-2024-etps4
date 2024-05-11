//
//  MostrarDatos.swift
//  pruebafirebase
//
//  Created by MacOsX on 5/11/24.
//

import SwiftUI

struct MostrarDatos: View {
    
    @ObservableObject var info: Modelo
    
    var body: some View {
        List {
            ForEach(info.datos){
                dat in
                
                VStack{
                    Text(dat,)
                }
            }
        }
    }
}

struct MostrarDatos_Previews: PreviewProvider {
    static var previews: some View {
        MostrarDatos()
    }
}
