//
//  MovieDetailModel.swift
//  Movie Explorer
//
//  Created by Dariga on 16.06.2023.
//

import Foundation

struct MovieDetailModel: Decodable {
    let title: String
    let imageURLPath: String
    let releaseDate: String
    let duration: Int
    var voteAverage: Double?
    var popularity: Double?
    let overview: String
    var productionCompanies: [MovieProductionCompanyModel]
    
    enum CodingKeys: String, CodingKey {
        case title
        case imageURLPath = "backdrop_path"
        case releaseDate = "release_date"
        case duration = "runtime"
        case voteAverage = "vote_average"
        case popularity
        case overview
        case productionCompanies = "production_companies"
    }
    
    
}
