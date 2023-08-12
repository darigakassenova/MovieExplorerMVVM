//
//  DetailRepositoryInterface.swift
//  Movie Explorer
//
//  Created by Dariga on 12.08.2023.
//

import Foundation

protocol DetailRepositoryInterface: AnyObject {
    func getMovie(by id: Int, completion: @escaping (Result<DetailModel, Error>) -> Void)
}
