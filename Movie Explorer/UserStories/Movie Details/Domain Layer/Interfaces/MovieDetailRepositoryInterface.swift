//
//  MovieDetailRepositoryInterface.swift
//  Movie Explorer
//
//  Created by Dariga on 17.06.2023.
//

import Foundation

protocol MovieDetailRepositoryInterface: AnyObject {
    func getMovie(by id: Int, completion: @escaping (Result<MovieDetailModel, Error>) -> Void)
}

