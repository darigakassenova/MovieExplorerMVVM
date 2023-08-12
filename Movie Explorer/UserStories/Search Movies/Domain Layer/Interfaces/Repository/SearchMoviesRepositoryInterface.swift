//
//  SearchMoviesRepositoryInterface.swift
//  Movie Explorer
//
//  Created by Dariga on 12.08.2023.
//

import Foundation

protocol SearchMoviesRepositoryInterface: AnyObject {
    func getMovies(query: String, completion: @escaping (Result<[MoviePosterModel], Error>) -> Void)
    func getMoreMovies(completion: @escaping (Result<[MoviePosterModel], Error>) -> Void)
}
