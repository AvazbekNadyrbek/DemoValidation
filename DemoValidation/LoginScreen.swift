//
//  ContentView.swift
//  DemoValidation
//
//  Created by Авазбек Надырбек уулу on 21.10.25.
//

import SwiftUI

struct LoginScreen: View {
    
    @State private var errorWrapper: ErrorWrapper?
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggingIn: Bool = false
    
    // @Enviroment(\.showError) private var showError
    
    // @Enviroment(\.httpClient) private var httpClient
    let httpClient = HTTPClient()
    
    private var isFormValid: Bool {
        return !username.isEmptyOrWhitespace && !password.isEmptyOrWhitespace
    }
    
    private func login() async {
        do {
            try await httpClient.login(username: username, password: password)
        } catch {
            
            // showError(error, "Please check username or password")
            
            errorWrapper = ErrorWrapper(error: error, guidance: NSLocalizedString("Please check your usernmane and password", comment: "Error message for invalid login credential"))
        }
    }
    
    var body: some View {
        
        Form {
            TextField("Enter username", text: $username)
            SecureField("Enter a password", text: $password)
            Button {
                isLoggingIn = true
            } label: {
                Text("Login")
            }.disabled(!isFormValid)
                .task(id: isLoggingIn) {
                    if isLoggingIn {
                        await login()
                    }
                    isLoggingIn = false
                }
        }
        .sheet(item: $errorWrapper) { errorWrapper in
            ErrorView(errorWrapper: errorWrapper)
        }
    }
}

#Preview {
    LoginScreen()
}
