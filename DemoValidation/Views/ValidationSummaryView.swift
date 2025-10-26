//
//  ValidationSummaryView.swift
//  DemoValidation
//
//  Created by Авазбек Надырбек уулу on 26.10.25.
//

import SwiftUI

struct ValidationSummaryView: View {
    
    let errorMessages: [NewDriverLicensFromError]
    
    var body: some View {
        ForEach(errorMessages, id: \.self) { errorMessages in
            Text(errorMessages.localizedDescription)
        }
    }
}

#Preview {
    ValidationSummaryView(errorMessages: [])
}
