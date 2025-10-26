//
//  ContentView.swift
//  DemoValidation
//
//  Created by Авазбек Надырбек уулу on 21.10.25.
//

import SwiftUI

// Cognitive Load

struct LoginScreen: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    private var isFormValid: Bool {
        return !username.isEmptyOrWhitespace && !password.isEmptyOrWhitespace
    }
    
    
    var body: some View {
        Form {
            TextField("Enter username", text: $username)
            SecureField("Enter a passwird", text: $password)
            Button {
                print(username)
            } label: {
                Text("Login")
            }.disabled(!isFormValid)

        }
    }
}

#Preview {
    LoginScreen()
}
