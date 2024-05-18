//
//  ObservedObjectView.swift
//  StatesSwiftUI
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

struct ObservedObjectView: View {
    @ObservedObject var student: Student
    
    var body: some View {
        Button("Actualizar edad") {
            student.age = student.age + 5
        }
    }
}

struct ObservedObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectView(student: Student())
    }
}
