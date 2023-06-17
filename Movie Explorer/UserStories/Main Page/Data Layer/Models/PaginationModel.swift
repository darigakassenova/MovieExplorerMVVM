//
//  PaginationModel.swift
//  Movie Explorer
//
//  Created by Dariga on 08.06.2023.
//

import Foundation

struct PaginationModel<T: Decodable>: Decodable {
    let page: Int
    let totalPages: Int
    let totalResults: Int
    let results: [T]
}
