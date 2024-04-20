//
//  ContentView.swift
//  MyFirstTestSwift
//
//  Created by MacOsX on 4/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            // VStack ****************
            Text("*********** VStack ***********")
            
            VStack(alignment: .leading){
                Text("Text with color")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                Text("Text with bold")
                    .bold()
                
                Text("Text with large title")
                    .font(.largeTitle)
                
                Image("utec")
                    .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200, alignment: .center)
                        .cornerRadius(3)
                        
            }
            
            Text("*********** VStack ***********")
            VStack(alignment: .leading){
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            
            // HStack ****************
            Text("*********** HStack ***********S")
            
            HStack(){
                Text("Primer Text")
                Text("Segundo Text")
                Text("Tercer Text")
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
