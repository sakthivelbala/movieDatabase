//
//  movieServiceImpl.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 07/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import Foundation

class movieServiceImpl:movieService{
    func sortMovieData(movies:[movie])->[movie]{
        let sortedMovies=movies.sorted(by: {
            $0.release_date>$1.release_date || $0.vote_average>$1.vote_average
        })
        return sortedMovies
    }
}
