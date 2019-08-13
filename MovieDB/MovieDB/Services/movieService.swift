//
//  movieService.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 07/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import Foundation

protocol movieService{
    func sortMovieData(movies:[movie])->[movie]
}
