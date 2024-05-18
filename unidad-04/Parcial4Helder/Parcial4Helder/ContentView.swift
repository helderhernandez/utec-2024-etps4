//
//  ContentView.swift
//  Parcial4Helder
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

enum AuthenticationSheetView: String, Identifiable{
    case login
    case register
    
    var id: String {
        return rawValue
    }
}

struct ContentView: View {
    var body: some View {
        LoginView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
