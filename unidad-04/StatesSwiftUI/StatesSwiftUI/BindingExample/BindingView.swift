//
//  BindingView.swift
//  StatesSwiftUI
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

struct BindingView: View {
    /**
     con @binding indicamos que esta struct
     no es propietaria de la variable, pero que puede modificarla (reactividad)
     */
    @Binding var contador: Int
    
    var body: some View {
        VStack {
            Text("Valor actual: \(contador)")
            Button("Sumar 5"){
                contador = contador + 5
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(contador: .constant(999))
    }
}
