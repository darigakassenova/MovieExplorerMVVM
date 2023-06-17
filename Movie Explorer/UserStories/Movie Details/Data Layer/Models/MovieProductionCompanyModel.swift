//
//  MovieProductionCompanyModel.swift
//  Movie Explorer
//
//  Created by Dariga on 16.06.2023.
//

import Foundation

struct MovieProductionCompanyModel: Decodable {
    let id: Int
    let logoURLPath: String
    let name: String
    let originCountry: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case logoURLPath = "logo_path"
        case name
        case originCountry = "origin_country" 
    }
}
