//
//  MovieController.swift
//  MoviesApp
//
//  Created by Anis on 11/21/19.
//  Copyright © 2019 Anis. All rights reserved.
//

import UIKit

class MovieController: UIViewController,UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    var movieViewModels = [MovieViewModel]()
    let cellId = "cellId"
    var viewModel:MovieViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        fetchData()
        
    }
    
    fileprivate func fetchData() {
        Service.shared.fetchMovies(endpoint: .topRated) { (movies, err) in
            if let err = err {
                print("Failed to fetch courses:", err)
                return
            }
            self.movieViewModels = movies?.results.map({return MovieViewModel(movie: $0)}) ?? []
            self.collectionView.reloadData()
            print("Data reloaded...")
        }
    }


}
extension MovieController: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movieViewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MovieCell
        let movieViewModel = movieViewModels[indexPath.row]
        cell.movieViewModel = movieViewModel
        return cell
    }
    

  
}
