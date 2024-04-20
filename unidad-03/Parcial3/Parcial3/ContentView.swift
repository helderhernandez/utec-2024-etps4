//
//  ContentView.swift
//  Parcial3
//
//  Created by MacOsX on 4/20/24.
//

import SwiftUI

struct ContentView: View {
    @State var inmuebles = [Inmueble]()
    
    var body: some View {
        
        VStack(){
            Encabezado()
            
            List(inmuebles){
                inmuebles in VStack(alignment: .leading){
                    
                    
                    Image("\(inmuebles.urlImg)")
                        .resizable()
                        .scaledToFit()
                    
                    Text("\(inmuebles.descripcion)")
                        .bold()
                        .foregroundColor(.blue)
                        .padding(.bottom)
                    
                    Text("$ \(inmuebles.precio)")
      
                    Spacer()
                }
            }
            
            Botones()
        }
            
        .onAppear(){
            Api().loadData{(inmuebles) in
                self.inmuebles = inmuebles
            }
        }.navigationTitle("Inmuebles Disponiles")
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
