//
//  Movie.swift
//  MoviesApp
//
//  Created by Anis on 11/21/19.
//  Copyright © 2019 Anis. All rights reserved.
//

import Foundation

struct MovieData:Decodable {
    let results: [Movie]
}

struct Movie:Decodable {
    let id: Int
    let title: String
    let overview: String
    let vote_average: Float
    let popularity: Float
    let release_date: String
    let poster_path: String
}
