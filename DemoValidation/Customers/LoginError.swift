//
//  LoginError.swift
//  DemoValidation
//
//  Created by Авазбек Надырбек уулу on 28.10.25.
//

import Foundation

enum LoginError: LocalizedError {
    case invalidCredentials
    
    var errorDescription: String? {
        switch self {
        case .invalidCredentials:
            return NSLocalizedString("Invalid credentials", comment: "Error message for invalid login credential")
        }
    }
}
