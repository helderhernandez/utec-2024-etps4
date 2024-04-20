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
        List(inmuebles){
                    inmuebles in VStack(alignment: .leading){
                        
                        Text("\(inmuebles.descripcion)")
                            .font(.title)
                            .foregroundColor(.blue)
                            .padding(.bottom)
                        
                        HStack{
                            Text("\(inmuebles.categoria)")
                                .font(.title)
                                .foregroundColor(.blue)
                                .padding(.bottom)
                            
                            Text("\(inmuebles.ubicacion)")
                                .font(.title)
                                .foregroundColor(.blue)
                                .padding(.bottom)
                        }
                        
                        Spacer()
                    }
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
