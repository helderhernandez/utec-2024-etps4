//
//  ContentView.swift
//  MyFirstTestSwift
//
//  Created by MacOsX on 4/20/24.
//

import SwiftUI

struct ContentView: View {
    // variables
    @State var cantidad = 0
    
    var body: some View {
        VStack(alignment: .leading){
            // VStack ****************
            Text("*********** VStack ***********")
            
            VStack(alignment: .leading){
                Text("\(cantidad)")
                    .foregroundColor(.red)
                
                Button(action:{self.cantidad += 1}){
                    Text("Tocar para actualizar @state")
                }
            }
            
            Text("*********** VStack ***********")
            VStack(alignment: .leading){
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                Image("utec")
                    .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(3)
            }
            
            // HStack ****************
            Text("*********** HStack ***********S")
            
            HStack(){
                Text("Text with bold")
                    .bold()
                
                Text("Text with large title")
                    .font(.largeTitle)
            }
            
            Text("*********** HStack ***********S")
            HStack(){
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
                
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
