//
//  Header.swift
//  parcial2
//
//  Created by MacOsX on 3/16/24.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack{
            Image("logo-utec")
                .resizable()
                .scaledToFit()
                .frame(width: 50,
                       height: 50,
                       alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerRadius: 50))
            Text("Hola papu!")
            Text("Hola papu!")
            Text("Hola papu!")
            
            Image(systemName:"pencil.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 50,
                   height: 50,
                   alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(0.5)
                .background(colorNaranja)
            
            Image(systemName:"message.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 50,
                   height: 50,
                   alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                .cornerRadius(100)
                .background(colorNaranja)
                
        }
        
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
