//
//  AuthenticationFirebaseDatasource.swift
//  Parcial4Helder
//
//  Created by MacOsX on 5/18/24.
//

import SwiftUI

struct User {
    let email: String
}

import Foundation
import FirebaseAuth

final class AuthenticationFirebaseDatasource {
    func createNewUser(email: String, password: String, completionBlock: @escaping (Result<User, Error>) -> Void) {
            Auth.auth().createUser(withEmail: email, password: password) { authDataResult, error in
                if let error = error {
                    print("Error creating a new user \(error.localizedDescription)")
                    completionBlock(.failure(error))
                    return
                }
                let email = authDataResult?.user.email ?? "No email"
                print("New user created with info \(email)")
                completionBlock(.success(.init(email: email)))
            }
        }
}
