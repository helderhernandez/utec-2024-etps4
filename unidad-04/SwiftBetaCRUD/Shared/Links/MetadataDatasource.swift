//
//  MetadataDatasource.swift
//  SwiftBetaCRUD
//
//  Created by MacOsX on 5/26/24.
//

import Foundation
import LinkPresentation

/**
 esta clase se encarga de obtener el titulo a partir de una URL
 */

enum CustoMetadataError: Error {
    case badURL
}

final class MetadataDatasource {
    private var metadataProvider: LPMetadataProvider?
    
    func getMetadata(fromURL url: String, completionBlock: @escaping (Result<LinkModel, Error>) -> Void) {
        guard let url = URL(string: url) else {
            completionBlock(.failure(CustoMetadataError.badURL))
            return
        }
        metadataProvider = LPMetadataProvider()
        metadataProvider?.startFetchingMetadata(for: url, completionHandler: { metadata, error in
            if let error = error {
                print("Error getting metadata \(error.localizedDescription)")
                completionBlock(.failure(error))
                return
            }
            
            let linkModel = LinkModel(url: url.absoluteString,
                                      title: metadata?.title ?? "No title",
                                      isFavorited: false,
                                      isCompleted: false)
            completionBlock(.success(linkModel))
        })
    }
}
