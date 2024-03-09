//
//  Elemento.swift
//  shop-clase-20240309
//
//  Created by MacOsX on 3/9/24.
//

import SwiftUI

struct Elemento: View {
    var body: some View {
        ZStack(alignment:.top){
            RoundedRectangle(cornerRadius: 15)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 150)
                .foregroundColor(colorNaranja)
            
            ZStack(alignment:.top){
                Image("banana")
                    .resizable()
                    .scaledToFit()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 110, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                VStack(spacing:0){
                    Image(systemName:"fresa")
                        .foregroundColor(.black)
                        .background(colorNaranja)
                        //.font(.system(size))
                }
            }
        }
    }
}

struct Elemento_Previews: PreviewProvider {
    static var previews: some View {
        Elemento()
    }
}
