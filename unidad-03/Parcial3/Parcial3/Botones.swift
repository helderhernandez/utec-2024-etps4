//
//  Botones.swift
//  Parcial3
//
//  Created by MacOsX on 4/20/24.
//

import SwiftUI

struct Botones: View {
    //@State var presionado
    var body: some View {
        HStack{
            ZStack{
                Circle()
                    .fill(Color.blue)
                    .cornerRadius(10)
                    .offset(x:20)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 50)
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width:20, height:20)
                    .offset(x:20)
            }
            Spacer()
            ZStack{
                Circle()
                    .fill(Color.blue)
                    .cornerRadius(10)
                    .offset(x:20)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 50)
                Image(systemName: "folder")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width:20, height:20)
                    .offset(x:20)
               
                
                
            }
            Spacer()
            ZStack{
                Circle()
                    .fill(Color.blue)
                    .cornerRadius(10)
                    .offset(x:20)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 50)
                Image(systemName: "plus.circle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width:20, height:20)
                    .offset(x:20)
                
            }
            Spacer()
            ZStack{
                Circle()
                    .fill(Color.blue)
                    .cornerRadius(10)
                    .offset(x:20)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 50)
                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width:20, height:20)
                    .offset(x:20)
            }
            Spacer()
            ZStack{
                Circle()
                    .fill(Color.blue)
                    .cornerRadius(10)
                    .offset(x:20)
                    .frame(width: 40, height: 40)
                    .shadow(radius: 50)
                Image(systemName: "gear")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(width:20, height:20)
                    .offset(x:20)
            }
            Spacer()
        }.padding([.leading, .bottom, .trailing])
        //.background(Color.green)
    }
}

struct Botones_Previews: PreviewProvider {
    static var previews: some View {
        Botones()
    }

}

