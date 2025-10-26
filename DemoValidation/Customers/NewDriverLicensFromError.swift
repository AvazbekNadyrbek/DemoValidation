//
//  NewDriverLicensFromError.swift
//  DemoValidation
//
//  Created by Авазбек Надырбек уулу on 26.10.25.
//

import Foundation


enum NewDriverLicensFromError: LocalizedError, Identifiable {
    
    case firstName
    case secondName
    case ssn
    case street
    case city
    case state
    case zipCode
    
    var id: UUID { 
        UUID()
    }
    
    var errorDescription: String? {
        switch self {
        case .firstName:
            return NSLocalizedString("First Name cannot be empty", comment: "")
        case .secondName:
            return NSLocalizedString("Second Name cannot be empty", comment: "")
        case .ssn:
            return NSLocalizedString("SSN cannot be empty", comment: "")
        case .street:
            return NSLocalizedString("Streen cannot be emoty", comment: "")
        case .city:
            return NSLocalizedString("City cannot be emoty", comment: "")
        case .state:
            return NSLocalizedString("State cannot be emoty", comment: "")
        case .zipCode:
            return NSLocalizedString("ZipCode cannot be emoty", comment: "")
        }
    }
}
