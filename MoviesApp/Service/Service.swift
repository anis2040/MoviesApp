//
//  Service.swift
//  MoviesApp
//
//  Created by Anis on 11/21/19.
//  Copyright © 2019 Anis. All rights reserved.
//

import Foundation

class Service: NSObject {
    
    static let shared = Service()
    
    func fetchMovies(endpoint:EndPoint,completion: @escaping (MovieData?, Error?) -> ()) {
        guard let url = URL(string:"\(Constants.BaseURL)\(endpoint.rawValue)\(Constants.apiKey)") else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                completion(nil, err)
                print("Failed to fetch movies:", err)
                return
            }
            
            // check response
            guard let data = data else { return }
            do {
                let movies = try JSONDecoder().decode(MovieData.self, from: data)
                DispatchQueue.main.async {
                    completion(movies, nil)
                }
            } catch let jsonErr {
                print("Failed to decode:", jsonErr)
            }
            }.resume()
    }
}
