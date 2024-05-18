//
//  ContentView.swift
//  StatesSwiftUI
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: ComponentParamView(contador: 777)){
                    ItemMenuView(
                        iconMenu: "star.fill",
                        labelMenu: "Component with parameter",
                        descriptionMenu: "Send param from parent to child component"
                    )
                }
                
                Divider()
                
                NavigationLink(destination: StateView()){
                    ItemMenuView(
                        iconMenu: "star.fill",
                        labelMenu: "State",
                        descriptionMenu: "@State example"
                    )
                }
                
                Divider()
                
                NavigationLink(destination: BindingParentView()){
                    ItemMenuView(
                        iconMenu: "star.fill",
                        labelMenu: "Binding",
                        descriptionMenu: "@Binding example"
                    )
                }
            }
            .navigationTitle("Hello :D")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
