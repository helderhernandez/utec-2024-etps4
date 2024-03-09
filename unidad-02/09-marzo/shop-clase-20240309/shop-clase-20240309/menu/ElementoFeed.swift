//
//  ElementoFeed.swift
//  shop-clase-20240309
//
//  Created by MacOsX on 3/9/24.
//

import SwiftUI

struct ElementoFeed: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                Elemento()
                ForEach(1..<6){
                    i in ElementoCard(imagenNombre: "vendedor-\(i)", frutaImagen: "vendedor-\(i)", titulo: titles[i-1])
                        .foregroundColor(.white)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                .padding(.leading)
                .padding(.vertical, 5)
                
            }
        }
    }
}

struct ElementoFeed_Previews: PreviewProvider {
    static var previews: some View {
        ElementoFeed()
    }
}
