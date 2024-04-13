//
//  ContentView.swift
//  PokApp
//
//  Created by MacOsX on 4/13/24.
//

import SwiftUI

struct ContentView: View {
    @State var pokemon = [PokemonEntry]()
    @State var searchText = ""
    
    
    var body: some View {
        List{
            ForEach(searchText == "" ? pokemon : pokemon.filter({$0.name.contains(searchText.lowercased())})){
                entry in
                HStack {
                    NavigationLink("\(entry.name)".capitalized, destination: Text("Detalle para \(entry.name)"))
                }
            }
        }.onAppear(){
            PokeApi().getData(){ pokemon in
                self.pokemon = pokemon
            }
        }.navigationTitle("Pokemon UI desk")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
