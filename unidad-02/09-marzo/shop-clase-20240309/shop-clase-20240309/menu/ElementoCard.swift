//
//  ElementoCard.swift
//  shop-clase-20240309
//
//  Created by MacOsX on 3/9/24.
//

import SwiftUI

struct ElementoCard: View {
    let imagenNombre:String
    let frutaImagen: String
    let titulo: String
    
    @State var scala:CGFloat=1.0
    
    var body: some View {
        ZStack(alignment: .leading){
            Image(frutaImagen)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 170, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerRadius: 40))
                         
            Text(titulo)
                .font(.system(size: 36,
                        weight:.semibold))
            
            Spacer()
        }.padding(8)
    }
}

struct ElementoCard_Previews: PreviewProvider {
    static var previews: some View {
        ElementoCard(imagenNombre: "Fresita", frutaImagen: "fresa", titulo: "Frutilla")
    }
}
