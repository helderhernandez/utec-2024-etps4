//
//  LoginView.swift
//  Parcial4Helder
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

struct LoginView: View {
    @State var textFieldEmail: String = ""
    @State var textFieldPassword: String = ""
    
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
        
        var body: some View {
            VStack {
 
                Group {
                    Text("Parcial 4")
                    Text("Login")
                        .bold()
                        .underline()
                }
                .padding(.horizontal, 8)
                .multilineTextAlignment(.center)
                .font(.largeTitle)
                
                Group {
                    TextField("Añade tu correo electrónico", text: $textFieldEmail)
                    TextField("Añade tu contraseña", text: $textFieldPassword)
                    
                    Button("Login") {
                        authenticationViewModel.createNewUser(
                            email: textFieldEmail,
                            password: textFieldPassword
                        )
 
                    }
                    
 
                }
                
                .padding(.horizontal, 64)
                Spacer()
            }
        }
}


/*
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
 */
 
