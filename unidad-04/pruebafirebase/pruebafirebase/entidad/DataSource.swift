//
//  DataSource.swift
//  pruebafirebase
//
//  Created by MacOsX on 5/11/24.
//

import Foundation
import FirebaseFirestore

final class DataSource {
    private let database = Firestore.firestore()
    private let collection = "datos"
    
    func getMostrar(completionBlock: @escaping (Result<[Modelo], Error>) -> Void){
        database.collection(collection)
            .addSnapshotListener{query, error in
                if let error != nil{
                    print("No se puede conectar con la base")
                    //completionBlock(error)
                    
                    return
                    
                }
                
                guard let document = query?.documents.compactMap({$0}) else{
                    //completionBlock(success([]))
                    return
                }
                
                let documentos = document.map{try? $0.data(as Modelo.self)}
                    .compactMap{$0}
                
                //completionBlock(success(datos))
                
            }
    }

}
