//
//  ErrorWrappers.swift
//  DemoValidation
//
//  Created by Авазбек Надырбек уулу on 28.10.25.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id = UUID()
    let error: Error
    let guidance: String
}
