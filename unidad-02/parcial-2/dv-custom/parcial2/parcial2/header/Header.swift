//
//  Header.swift
//  parcial2
//
//  Created by MacOsX on 16/3/24.
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
                       alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 50))
            
            Image(systemName:"pencil.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 50,
                   height: 50,
                   alignment: .center)
                .cornerRadius(0.5)
            
            Image(systemName:"message.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 50,
                   height: 50,
                   alignment: .center)
                .cornerRadius(100)
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
