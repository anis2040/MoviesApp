//
//  Constants.swift
//  MoviesApp
//
//  Created by Anis on 11/21/19.
//  Copyright © 2019 Anis. All rights reserved.
//

import Foundation

class Constants {

    static let BaseURL =  "https://api.themoviedb.org/3/movie/"
    static let apiKey = "?api_key=8d61230b01928fe55a53a48a41dc839b"
    static let ImageURL = "http://image.tmdb.org/t/p/w342/"
}

enum EndPoint:String {
    
    case topRated =  "top_rated"
}
