//
//  MovieDetailDataSource.swift
//  Movie Explorer
//
//  Created by Dariga on 17.06.2023.
//

import Foundation

protocol MovieDetailDataSource: AnyObject {
    func getMovie(by id: Int, completion: @escaping (Result<MovieDetailModel, Error>) -> Void)
}

class MovieDetailRemoteDataSource {
    private let network: Network
    
    init(network: Network) {
        self.network = network
    }
}

extension MovieDetailRemoteDataSource: MovieDetailDataSource {
    func getMovie(by id: Int, completion: @escaping (Result<MovieDetailModel, Error>) -> Void) {
        network.execute(MovieDetailEndpoint.getMovie(id: id), completion: completion)
    }
}
