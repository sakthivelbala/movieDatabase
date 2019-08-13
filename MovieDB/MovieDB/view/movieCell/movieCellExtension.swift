//
//  movieCellExtension.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 08/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import UIKit

extension movieCell{
    func setUpMovieImage() {
        addSubview(backdropImage)
        NSLayoutConstraint.activate([
            backdropImage.topAnchor.constraint(equalTo: topAnchor),
            backdropImage.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8),
            backdropImage.widthAnchor.constraint(equalTo: widthAnchor)
            ])
    }
    func setUpRatingText() {
        circularProgressView.addSubview(ratingText)
        NSLayoutConstraint.activate([
            ratingText.leftAnchor.constraint(equalTo: circularProgressView.leftAnchor),
            ratingText.rightAnchor.constraint(equalTo: circularProgressView.rightAnchor),
            ratingText.topAnchor.constraint(equalTo: circularProgressView.topAnchor),
            ratingText.bottomAnchor.constraint(equalTo: circularProgressView.bottomAnchor)
            ])
    }
    
    func setUpCircularProgressView() {
        addSubview(circularProgressView)
        NSLayoutConstraint.activate([
            circularProgressView.leftAnchor.constraint(equalTo: leftAnchor),
            circularProgressView.topAnchor.constraint(equalTo: backdropImage.bottomAnchor),
            circularProgressView.bottomAnchor.constraint(equalTo: bottomAnchor),
            circularProgressView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.15)
            ])
        setUpCircularProgressBar()
        setUpRatingText()
    }
    func setUpCircularProgressBar(){
        circularProgressView.layoutIfNeeded()
        let circularPath=UIBezierPath(arcCenter: CGPoint(x: circularProgressView.bounds.width/2, y: circularProgressView.bounds.height/2), radius: circularProgressView.bounds.width/2*0.8, startAngle: 0, endAngle: 2*CGFloat.pi, clockwise: true).cgPath
        progressCircle.path=circularPath
        progressCircle.lineWidth=circularProgressView.frame.height/15
        circularProgressView.layer.addSublayer(progressCircle)
    }
    func setupTextStackView(){
        titleDateStackView.addArrangedSubview(movieTitle)
        titleDateStackView.addArrangedSubview(movieDate)
        addSubview(titleDateStackView)
        NSLayoutConstraint.activate([
            titleDateStackView.topAnchor.constraint(equalTo: backdropImage.bottomAnchor,constant: frame.height/40),
            titleDateStackView.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -frame.height/30),
            titleDateStackView.leftAnchor.constraint(equalTo: circularProgressView.rightAnchor),
            titleDateStackView.rightAnchor.constraint(equalTo: rightAnchor)
            ])
    }
}
