//
//  MostrarDatos.swift
//  pruebafirebase
//
//  Created by MacOsX on 5/11/24.
//

import SwiftUI

struct MostrarDatos: View {
    
    @ObservedObject var info: ViewModel
    
    var body: some View {
        List {
            ForEach(info.datos){
                data in
                
                VStack{
                    Group{
                        Text(data.nombre)
                        
                        Text(data.apellido)
                        
                        
                    }
                }
            }
        }
    }
}

struct MostrarDatos_Previews: PreviewProvider {
    static var previews: some View {
        MostrarDatos(info: ViewModel())
    }
}
