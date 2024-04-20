//
//  Models.swift
//  jsonRickandmorty
//
//  Created by MacOsX on 4/20/24.
//

import Foundation

struct CharacterEntry: Codable, Identifiable{
    let id = UUID()
    var name: String
    var race: String
}

struct Character: Codable{
    var items : [CharacterEntry]
}

class Api{
    func getData(completion: @escaping([CharacterEntry]) -> ()){
        guard let url = URL(string: "https://dragonball-api.com/api/characters") else { return }
        
        URLSession.shared.dataTask(with: url){(data, response, error) in guard let data = data else { return }
            
            let characterList = try! JSONDecoder()
                .decode(Character.self, from: data)
            
            DispatchQueue.main.async {
                completion(characterList.items)
            }
        }.resume()
    }
}
