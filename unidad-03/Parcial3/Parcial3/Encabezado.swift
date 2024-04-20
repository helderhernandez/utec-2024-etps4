//
//  Encabezado.swift
//  Parcial3
//
//  Created by MacOsX on 4/20/24.
//

import SwiftUI

struct Encabezado: View {
    @State var busqueda:String=""
    var body: some View {
        HStack{
            Spacer()
            Image("inmueble-1")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 35))
            Spacer()
            TextField("Buscar",text:$busqueda)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .cornerRadius(30)
                .frame(width: 100, height: 40)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .background(Color.blue.opacity(0.02))
           
            ZStack{
                Circle()
                    .fill(Color.white)
                    .cornerRadius(10)
                    .offset(x:20)
                    .frame(width: 40, height: 40)
                   // .shadow(radius: 50)
                Image(systemName: "bag.badge.plus")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.blue)
                    .frame(width:20, height:20)
                    .offset(x:20)
            }
            ZStack{
                Image("inmueble-2")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(20)
            }
        }.padding(.horizontal)
    }
}

struct Encabezado_Previews: PreviewProvider {
    static var previews: some View {
        Encabezado()
    }
}

