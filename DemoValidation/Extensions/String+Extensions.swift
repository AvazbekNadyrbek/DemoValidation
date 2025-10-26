//
//  String+Extension.swift
//  DemoValidation
//
//  Created by Авазбек Надырбек уулу on 21.10.25.
//

import Foundation

extension String {
    
    var isEmptyOrWhitespace: Bool {
        trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    var isSSN: Bool {
        let ssnRegex = "^\\d{3}-\\d{2}-\\d{4}$"
        let ssnPredicate = NSPredicate(format: "SELF MATCHES %@", ssnRegex)
        return ssnPredicate.evaluate(with: self)
    }
    
}
