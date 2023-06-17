//
//  MoviePosterModel.swift
//  Movie Explorer
//
//  Created by Dariga on 08.06.2023.
//

import Foundation

struct MoviePosterModel: Decodable {
    let id: Int
    let posterPath: String
    
    enum CodingKeys: String, CodingKey{
        case id
        case posterPath
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        let shortPosterPath = try container.decode(String.self, forKey: .posterPath)
        self.posterPath = Constants.imageHost + shortPosterPath
    }
}
