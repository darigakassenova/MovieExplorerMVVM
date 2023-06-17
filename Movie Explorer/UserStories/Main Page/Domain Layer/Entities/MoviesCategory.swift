//
//  MoviesCategory.swift
//  Movie Explorer
//
//  Created by Dariga on 08.06.2023.
//

import Foundation

enum MoviesCategory: String, CaseIterable {
    case nowPlaying = "now_playing"
    case popular
    case topRated = "top_rated"
    case upcoming
    
    var title: String {
        switch self {
        case .nowPlaying:
            return "Now Playing"
        case .popular:
            return "Popular"
        case .topRated:
            return "Top Rated"
        case .upcoming:
            return "Upcoming"
        }
    }
}
