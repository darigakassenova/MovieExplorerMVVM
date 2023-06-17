//
//  URLRequest + Extention .swift
//  Movie Explorer
//
//  Created by Dariga on 08.06.2023.
//

import Foundation

extension URLRequest {
    mutating func addAuthorizationToken() {
        allHTTPHeaderFields = ["Authorization": "Bearer \(Constants.apiToken)"]
    }
}
