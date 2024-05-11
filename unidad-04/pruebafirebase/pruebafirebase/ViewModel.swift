//
//  ViewModel.swift
//  pruebafirebase
//
//  Created by MacOsX on 5/11/24.
//

import Foundation

final class ViewModel: ObservableObject {
    @Published var datos: [Modelo] = []
    @Published var mensajeError: String?
    private let repos: Repo

    init(repos:Repo = Repo())
    {
        self.repos = repos
    }
    
    func getAllData(){
        repos.getData{[weak self] result in
            switch result {
            case .success(let modelo):
                self?.datos = modelo
            case .failure(let error):
                self?.mensajeError = error.localizedDescription
            }
        }
    }
}
