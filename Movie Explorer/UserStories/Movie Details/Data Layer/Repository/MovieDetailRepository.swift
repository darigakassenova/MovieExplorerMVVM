//
//  MovieDetailRepository.swift
//  Movie Explorer
//
//  Created by Dariga on 17.06.2023.
//

import Foundation

class MovieDetailRepository {
    private let remoteDataSource: MovieDetailDataSource
    
    init(remoteDataSource: MovieDetailDataSource) {
        self.remoteDataSource = remoteDataSource
    }
}

extension MovieDetailRepository: MovieDetailRepositoryInterface {    
    func getMovie(by id: Int, completion: @escaping (Result<MovieDetailModel, Error>) -> Void) {
        remoteDataSource.getMovie(by: id, completion: completion)
    }
}
