//
//  MovieProductionModel.swift
//  Movie Explorer
//
//  Created by Dariga on 12.08.2023.
//

import Foundation

struct MovieProductionModel: Decodable {
    let id: Int
    let name: String
    let logoURLPath: String?
    let originCountry: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case logoURLPath = "logoPath"
        case originCountry
    }
}
