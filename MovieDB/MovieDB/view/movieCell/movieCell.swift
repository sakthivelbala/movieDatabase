//
//  movieCell.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 07/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import UIKit

class movieCell:UICollectionViewCell{
    var Movie:movie?{
        didSet{
            guard let movie=Movie else {return}
            backdropImage.image=UIImage.loadMovieImageFromUrl(imageUrl: "\(imageUrl)\(movie.backdrop_path)")
            movieTitle.text=movie.title
            movieDate.text=movie.release_date
            ratingText.text="\(Int(movie.vote_average*10))%"
            progressCircle.strokeEnd=CGFloat(movie.vote_average)*0.1
        }
    }
    let progressCircle:CAShapeLayer={
        let caShapeLayer=CAShapeLayer()
        caShapeLayer.lineCap=CAShapeLayerLineCap.round
        caShapeLayer.strokeColor=UIColor.green.cgColor
        caShapeLayer.fillColor=UIColor.black.cgColor
        caShapeLayer.strokeStart=0
        return caShapeLayer
    }()
    var backdropImage:UIImageView={
        let imageView=UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints=false
        imageView.contentMode=ContentMode.scaleToFill
        return imageView
    }()
    let circularProgressView:UIView={
        let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints=false
        return view
    }()
    let ratingText:UILabel={
        let textView = UILabel()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.font=UIFont.boldSystemFont(ofSize: 13)
        textView.textColor=UIColor.white
        textView.textAlignment=NSTextAlignment.center
        return textView
    }()
    let movieTitle:UILabel={
        let textView = UILabel()
        textView.font=UIFont.boldSystemFont(ofSize: 12)
        textView.textAlignment = NSTextAlignment.left
        textView.numberOfLines=0
        return textView
    }()
    let movieDate:UILabel={
        let textView = UILabel()
        textView.font=UIFont.italicSystemFont(ofSize: 13)
        textView.textAlignment = NSTextAlignment.left
        textView.numberOfLines=0
        return textView
    }()
    let titleDateStackView:UIStackView={
        let stackView=UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints=false
        stackView.spacing=2
        stackView.axis = .vertical
        return stackView
    }()
    override init(frame: CGRect) {
        super.init(frame:frame)
        layer.cornerRadius=frame.height/25
        layer.masksToBounds=true
        layer.borderWidth=frame.height/300
        layer.borderColor=UIColor.lightGray.cgColor
        setUpMovieImage()
        setUpCircularProgressView()
        setupTextStackView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
