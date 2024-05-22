//
//  StateView.swift
//  StatesSwiftUI
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

struct StateView: View {
    /**
     al colocar private, ya no es necesario declarar la variable en el constructor de la preview
     */
    @State private var contador: Int = 0
    
    var body: some View {
        VStack {
            Text("Valor actual: \(contador)")
            Button("Sumar 1"){
                contador = contador + 1
            }
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
