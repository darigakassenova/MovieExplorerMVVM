//
//  DetailsDataSource.swift
//  Movie Explorer
//
//  Created by Dariga on 12.08.2023.
//

import Foundation

protocol DetailsDataSource: AnyObject {
    func getMovieDeatils(by id: Int, completion: @escaping (Result<DetailModel, Error>) -> Void)
}
 
class DetailsRemoteDataSource {
    private let network: Network
    
    init(network: Network) {
        self.network = network
    }
}

extension DetailsRemoteDataSource: DetailsDataSource {
    func getMovieDeatils(by id: Int, completion: @escaping (Result<DetailModel, Error>) -> Void) {
        network.execute(DetailsEndpoint.getDetails(movieId: id), completion: completion)
    }
}
