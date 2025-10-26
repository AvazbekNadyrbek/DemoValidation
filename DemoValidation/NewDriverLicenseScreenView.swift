//
//  NewDriverLicenseScreenView.swift
//  DemoValidation
//
//  Created by Авазбек Надырбек уулу on 21.10.25.
//

import SwiftUI


struct NewDriverLicenseForm {
    
    var firtsName: String = ""
    var lastName: String = ""
    var ssn: String = ""
    var street: String = ""
    var city: String = ""
    var state: String = ""
    var zipCode: String = ""
    
    var errorMessages: [String] = []
    
    mutating func validate() -> Bool {
        
        errorMessages.removeAll()
        
        if firtsName.isEmptyOrWhitespace {
            errorMessages.append("First Name cannot be empty")
        }
        
        if lastName.isEmptyOrWhitespace {
            errorMessages.append("Last Name cannot be empty")
        }
        
        if ssn.isEmptyOrWhitespace {
            errorMessages.append("SSN cannot be empty")
        }
        
        if !ssn.isSSN {
            errorMessages.append("SSN is not valid format")
        }
        
        return errorMessages.isEmpty
    }
    
}

struct ValidationSummaryView: View {
    
    let errorMessages: [String]
    
    var body: some View {
        ForEach(errorMessages, id: \.self) { errorMessages in
            Text(errorMessages)
        }
    }
}

struct NewDriverLicenseScreenView: View {
    
    @State private var newDriverLicenseForm = NewDriverLicenseForm()
    
    var body: some View {
        Form {
            TextField("FirstName", text: $newDriverLicenseForm.firtsName)
            TextField("LastName", text: $newDriverLicenseForm.lastName)
            TextField("SSN", text: $newDriverLicenseForm.ssn)
            TextField("Street", text: $newDriverLicenseForm.street)
            TextField("City", text: $newDriverLicenseForm.city)
            TextField("State", text: $newDriverLicenseForm.state)
            TextField("ZipCode", text: $newDriverLicenseForm.zipCode)
            
            Button("Submit") {
                if newDriverLicenseForm.validate() {
                    //send request to the server
                }
            }
        }
        
        ValidationSummaryView(errorMessages: newDriverLicenseForm.errorMessages)
        
    }
}

#Preview {
    NewDriverLicenseScreenView()
}
