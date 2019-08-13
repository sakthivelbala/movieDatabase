//
//  detailedMovieView.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 08/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import UIKit


class detailedMovieView:UIViewController{
    
    var Movie:movie?{
        didSet{
            guard let movie=Movie else {return}
            backgroundImage.image=UIImage.loadMovieImageFromUrl(imageUrl: "\(imageUrl)\(movie.poster_path)")
            movieDetailsText.text="\(movie.original_title)\n\t\(movie.overview)"
        }
    }
    let movieDetailsText:UILabel={
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.font=UIFont.boldSystemFont(ofSize: 16)
        textView.textColor=UIColor.white
        textView.textAlignment = NSTextAlignment.justified
        textView.numberOfLines=0
        return textView
    }()
    var backgroundImage:UIImageView={
        let imageView=UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints=false
        imageView.alpha=0.4
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBackgroundImage()
        setUpMovieTextView()
    }
}
