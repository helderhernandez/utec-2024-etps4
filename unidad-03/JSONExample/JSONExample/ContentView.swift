//
//  ContentView.swift
//  JSONExample
//
//  Created by MacOsX on 4/13/24.
//

import SwiftUI

struct ContentView: View {
    @State var books = [Books]()
        
    var body: some View {
        List(books){
            books in VStack(alignment: .leading){
                
                Text("\(books.title)")
                    .font(.title)
                    .foregroundColor(.blue)
                    .padding(.bottom)
                
                HStack{
                    Text("\(books.author)")
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding(.bottom)
                    
                    Text("\(books.email)")
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding(.bottom)
                }
                
                Spacer()
            }
        }
        
        .onAppear(){
            Api().loadDate{(books) in
                self.books = books
            }
        }.navigationTitle("Libros UTEC")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

