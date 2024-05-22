//
//  ObservedObjectParentView.swift
//  StatesSwiftUI
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

/**
 Objeto mutable a traves del protocolo ObservableObject
 */
class Student: ObservableObject {
    /**
     anotacion que indica las variables que publicamos
     */
    @Published var name = "Maraleni Diaz"
    @Published var age = 45
}

struct ObservedObjectParentView: View {
    // para objectos utilizamos anotacion @StateObject
    @StateObject private var student = Student()
    
    var body: some View {
        VStack{
            Text("Nombre \(student.name), edad \(student.age)")
            
            Button("Actualizar datos") {
                student.name = student.name + "."
                student.age = student.age + 1
            }
            
            ObservedObjectView(student: student)
        }
    }
}

struct ObservedObjectParentView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectParentView()
    }
}

