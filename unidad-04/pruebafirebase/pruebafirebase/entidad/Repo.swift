//
//  Repo.swift
//  pruebafirebase
//
//  Created by MacOsX on 5/11/24.
//

import Foundation

final class Repo {
    private let datasource: DataSource
    
    init(datasource:DataSource=DataSource()){
        self.datasource = datasource
    }
    
    func getData(completionBlock: @escaping (Result<[Modelo], Error>) -> Void){
        self.datasource.getMostrar(completionBlock:completionBlock)
    }
}
