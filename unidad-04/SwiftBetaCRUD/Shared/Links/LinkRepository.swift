//
//  LinkRepository.swift
//  SwiftBetaCRUD
//
//  Created by user208646 on 5/22/24.
//

import Foundation

final class LinkRepository {
    private let linkDatasource: LinkDatasource
    //private let metadataDatasource: MetadataDatasource
    
    init(linkDatasource: LinkDatasource = LinkDatasource()
         //, metadataDatasource: MetadataDatasource = MetadataDatasource()
    ) {
        self.linkDatasource = linkDatasource
        //self.metadataDatasource = metadataDatasource
    }
    
    func getAllLinks(completionBlock: @escaping (Result<[LinkModel], Error>) -> Void) {
        linkDatasource.getAllLinks(completionBlock: completionBlock)
    }
}
