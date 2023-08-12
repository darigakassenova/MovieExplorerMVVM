//
//  DetailModel.swift
//  Movie Explorer
//
//  Created by Dariga on 12.08.2023.
//

import Foundation

struct DetailModel: Decodable {
    let id: Int
    let title: String
    let imageURLPath: String
    let releaseDate: String
    let duration: Int
    var voteAverage: Double?
    var popularity: Double?
    let overview: String
    var productionCompanies: [MovieProductionModel]
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case imageURLPath = "backdropPath"
        case releaseDate
        case duration = "runtime"
        case voteAverage
        case popularity
        case overview
        case productionCompanies
    }
}
