//
//  RequestProviding.swift
//  Movie Explorer
//
//  Created by Dariga on 08.06.2023.
//

import Foundation

protocol RequestProviding {
    var urlRequest: URLRequest { get }
    var shouldAddAuthorizationToken: Bool { get }
}
