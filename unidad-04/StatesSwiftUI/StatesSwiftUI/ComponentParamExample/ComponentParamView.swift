//
//  ComponentParam.swift
//  StatesSwiftUI
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

struct ComponentParamView: View {
    
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

struct ComponentParamView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentParamView(contador: 33)
    }
}
