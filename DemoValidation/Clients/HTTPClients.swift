//
//  HTTPClients.swift
//  DemoValidation
//
//  Created by Авазбек Надырбек уулу on 28.10.25.
//

import Foundation

struct HTTPClient {
    func login(username: String, password: String) async throws {
        //perform actually login
        throw LoginError.invalidCredentials
    }
}
