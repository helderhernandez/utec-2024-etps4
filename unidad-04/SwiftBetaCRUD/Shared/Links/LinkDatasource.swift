//
//  LinkDatasource.swift
//  SwiftBetaCRUD
//
//  Created by user208646 on 5/22/24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct LinkModel: Decodable, Identifiable, Encodable {
    // @DocumentID es un property wrapper
    @DocumentID var id: String?
    let url: String
    let title: String
    let isFavorited: Bool
    let isCompleted: Bool
}

final class LinkDatasource {
    private let database = Firestore.firestore()
    private let collection = "links" // nombre de la collection
    
    func getAllLinks(completionBlock: @escaping (Result<[LinkModel], Error>) -> Void) {
        database.collection(collection) // accedemos a la collection
            .addSnapshotListener { query, error in
                // manejando error (si existiese)
                if let error = error {
                    print("Error getting all links \(error.localizedDescription)")
                    completionBlock(.failure(error))
                    return
                }
                
                // si no existen errores continuamos...
                
                // si no hay ningun document retornamos vacio
                guard let documents = query?.documents.compactMap({ $0 }) else {
                    completionBlock(.success([]))
                    return
                }
                
                // si existen documents, extraemos y mapeamos a nuestro model
                let links = documents.map { try? $0.data(as: LinkModel.self) }
                                     .compactMap { $0 }
                
                completionBlock(.success(links))
            }
    }
    
    func createNew(link: LinkModel, completionBlock: @escaping (Result<LinkModel, Error>) -> Void) {
        do {
            _ = try database.collection(collection).addDocument(from: link)
            completionBlock(.success(link))
        } catch {
            completionBlock(.failure(error))
        }
    }
    
}
