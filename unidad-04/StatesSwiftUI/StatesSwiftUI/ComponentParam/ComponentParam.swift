//
//  ComponentParam.swift
//  StatesSwiftUI
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

struct ComponentParam: View {
    
    @State var contador: Int
    
    var body: some View {
        VStack {
            Text("Valor actual: \(contador)")
            Button("Sumar 1"){
                contador = contador + 1
            }
        }
    }
}

struct ComponentParam_Previews: PreviewProvider {
    static var previews: some View {
        ComponentParam(contador: 33)
    }
}
