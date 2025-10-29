//
//  ErrorView.swift
//  DemoValidation
//
//  Created by Авазбек Надырбек уулу on 28.10.25.
//

import Foundation
import SwiftUI

struct ErrorView: View {
    
    let errorWrapper: ErrorWrapper
    
    var body: some View {
        VStack {
            Text(errorWrapper.error.localizedDescription)
            Text(errorWrapper.guidance)
        }
    }
}

#Preview {
    ErrorView(errorWrapper: ErrorWrapper(error: LoginError.invalidCredentials, guidance: "Please check your username and password"))
}
