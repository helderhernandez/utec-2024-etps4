//
//  BindingBtnView.swift
//  StatesSwiftUI
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

struct BindingBtnView: View {
    /**
     con @binding indicamos que esta struct
     no es propietaria de la variable, pero que puede modificarla (reactividad)
     */
    @Binding var contador: Int
    
    var body: some View {
        Button("Restar 10"){
            contador = contador - 10
        }
    }
}

struct BindingBtnView_Previews: PreviewProvider {
    static var previews: some View {
        BindingBtnView(contador: .constant(999))
    }
}
