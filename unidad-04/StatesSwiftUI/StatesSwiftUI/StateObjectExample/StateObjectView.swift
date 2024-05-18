//
//  StateObjectExample.swift
//  StatesSwiftUI
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

/**
 Objeto mutable a traves del protocolo ObservableObject
 */
class User: ObservableObject {
    /**
     anotacion que indica las variables que publicamos
     */
    @Published var name = "Maraleni Diaz"
    @Published var age = 45
}

struct StateObjectView: View {
    // para objectos utilizamos anotacion @StateObject
    @StateObject private var user = User()
    
    var body: some View {
        VStack{
            Text("Nombre \(user.name), edad \(user.age)")
            
            Button("Actualizar datos") {
                user.name = user.name + "."
                user.age = user.age + 1
            }
        }
    }
}

struct StateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectView()
    }
}
