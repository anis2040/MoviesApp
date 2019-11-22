//
//  MovieVM.swift
//  MoviesApp
//
//  Created by Anis on 11/21/19.
//  Copyright © 2019 Anis. All rights reserved.
//

import Foundation

struct MovieViewModel {
    
    let id: Int
    let title: String
    let overview: String
    let vote_average: Float
    let popularity: Float
    let release_date: String
    let poster_path: String
    
    init(movie: Movie) {
        self.id = movie.id
        self.title = movie.title
        self.overview = movie.overview
        self.vote_average = movie.vote_average
        self.popularity = movie.popularity
        self.release_date = movie.release_date
        self.poster_path = movie.poster_path
    }
        
}
