//
//  BindingParentView.swift
//  StatesSwiftUI
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

struct BindingParentView: View {
    @State private var contador: Int = 0
    @State private var activarLink: Int?
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Valor actual: \(contador)")
                Button("Sumar 1"){
                    contador = contador + 1
                }
                
                Divider()
                
                NavigationLink(
                    destination: BindingView(contador: $contador),
                    tag: 1,
                    selection: $activarLink
                ){
                    /**
                     el boton cambiara el estado de la variable
                     "activarLink" y esta activara el navigation hacia el componente
                     */
                    Button("Abrir ventana de Binding"){
                        activarLink = 1
                    }
                }
                
                Divider()
                
                BindingBtnView(contador: $contador)
            }
        }
    }
}

struct BindingParentView_Previews: PreviewProvider {
    static var previews: some View {
        BindingParentView()
    }
}
