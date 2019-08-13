//
//  movie.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 06/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import Foundation


struct movie:Decodable{
    let vote_average:Double
    let title:String
    let poster_path:String
    let original_title:String
    let backdrop_path:String
    let overview:String
    let release_date:String
    
//    uncomment below datas if needed and use
    
    //    let popularity:Double
    //    let original_language:String
    //    let vote_count:Int
    //    let id:Int
    //    let video:Bool
    //    let adult:Bool
    //    let genre_ids:[Int]
}
