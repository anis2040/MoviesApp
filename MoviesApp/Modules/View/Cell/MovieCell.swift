//
//  MovieCell.swift
//  MoviesApp
//
//  Created by Anis on 11/21/19.
//  Copyright © 2019 Anis. All rights reserved.
//

import UIKit

class MovieCell: UICollectionViewCell {
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!

    
    var movieViewModel: MovieViewModel! {
        didSet {
            movieLabel.text = movieViewModel.title
            posterImageView.image = UIImage(named: "\(Constants.ImageURL)\(movieViewModel.poster_path)")
            print("Data is set ...")
        }
    }
    
    

}
