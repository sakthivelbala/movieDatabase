//
//  movieConnectionConfig.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 09/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//



//KEYs
let api_key="API_KEY"

//Movie Date
let startDate="2016-01-01"
let endDate="2016-03-31"


//URLs
let imageUrl="https://image.tmdb.org/t/p/w500"
let connectionUrl="https://api.themoviedb.org/3/discover/movie?api_key=\(api_key)&primary_release_date.gte=\(startDate)&primary_release_date.lte=\(endDate)"
