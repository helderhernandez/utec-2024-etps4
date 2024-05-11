//
//  Modelo.swift
//  pruebafirebase
//
//  Created by MacOsX on 5/11/24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Modelo:Decodable, Identifiable{
    @DocumentID var  id:String?
    let nombre:String
    let apellido:String
    let edad:String
    
}
