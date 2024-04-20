//
//  Modelo.swift
//  Parcial3
//
//  Created by MacOsX on 4/20/24.
//

import Foundation

struct Inmueble: Codable, Identifiable{
    let id = UUID()
    var precio: Decimal
    var categoria: String
    var descripcion: String
    var ubicacion: String
    var urlImg: String
}

class Api: ObservableObject{
    @Published var inmuebles = [Inmueble]()
    
    func loadData(completion:@escaping ([Inmueble]) -> ()){
        guard let url = Bundle.main.url(forResource: "Casas", withExtension: "json")
        else{
            print("url no valida")
            return
        }
        
        URLSession.shared.dataTask(with: url){
            data, response, error in let inmuebles = try! JSONDecoder().decode([Inmueble].self, from: data!)
            
            print(inmuebles)
            
            DispatchQueue.main.async {
                completion(inmuebles)
            }
        }.resume()
    }
}
