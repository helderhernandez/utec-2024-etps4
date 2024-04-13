//
//  Pokemon.swift
//  PokApp
//
//  Created by MacOsX on 4/13/24.
//

import Foundation

// struct number 1
struct Pokemon: Codable {
    var results : [PokemonEntry]
}

struct PokemonEntry: Codable,Identifiable{
    
    let id = UUID()
    var name : String
    var url : String
    
}

class PokeApi{
    func getData(completion: @escaping([PokemonEntry]) -> ()){
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=1000") else { return }
        
        URLSession.shared.dataTask(with: url){(data, response, error) in guard let data = data else { return }
            
            let pokemonList = try! JSONDecoder().decode(Pokemon.self, from: data)
            
            DispatchQueue.main.async {
                completion(pokemonList.results)
            }
        }.resume()
    }
}
