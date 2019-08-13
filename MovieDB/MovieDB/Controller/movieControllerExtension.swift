//
//  movieControllerExtension.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 07/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import Foundation

extension movieController{
    
    func fetchData(){
        URLSession.getMovieData(backendUrl: connectionUrl,onComplete:{(Page,err) in
            if let err=err{
                print(err)
            }
            if var Page=Page{
                Page.results=movieServiceImpl().sortMovieData(movies: Page.results)
                self.pageData=Page
                self.collectionView.reloadData()
            }
        })
    }
    
}
