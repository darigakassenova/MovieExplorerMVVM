//
//  NSObject + Extention.swift
//  Movie Explorer
//
//  Created by Dariga on 12.08.2023.
//

import Foundation

extension NSObject {
    static var identifier: String {
        return String(describing: Self.self)
    }
}
