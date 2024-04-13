//
//  Modelo.swift
//  JSONExample
//
//  Created by MacOsX on 4/13/24.
//

import Foundation

struct Books: Codable, Identifiable{
    let id = UUID()
    var author: String
    var email: String
    var title: String
}

class Api: ObservableObject{
    @Published var books = [Books]()
    
    func loadDate(completion:@escaping ([Books]) -> ()){
        guard let url = Bundle.main.url(forResource: "Books", withExtension: "json")
        else{
            print("url no valida")
            return
        }
        
        URLSession.shared.dataTask(with: url){
            data, response, error in let books = try! JSONDecoder().decode([Books].self, from: data!)
            
            print(books)
            
            DispatchQueue.main.async {
                completion(books)
            }
        }.resume()
    }
}
