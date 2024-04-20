//
//  ContentView.swift
//  jsonRickandmorty
//
//  Created by MacOsX on 4/20/24.
//

import SwiftUI

struct ContentView: View {
    @State var character = [CharacterEntry]()
    @State var searchText = ""
    
    
    var body: some View {
        List{
            ForEach(searchText == "" ? character : character.filter({$0.name.contains(searchText.lowercased())})){
                entry in
                HStack {
                    NavigationLink("\(entry.name)".capitalized, destination: Text("Detalle para \(entry.name)"))
                }
            }
        }.onAppear(){
            Api().getData(){ character in
                self.character = character
            }
        }.navigationTitle("Rick and Morty App")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
