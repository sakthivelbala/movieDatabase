//
//  detailedMovieViewExtension.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 08/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import UIKit

extension detailedMovieView{
    func setUpBackgroundImage() {
        view.addSubview(backgroundImage)
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImage.leftAnchor.constraint(equalTo: view.leftAnchor),
            backgroundImage.rightAnchor.constraint(equalTo: view.rightAnchor)
            ])
    }
    func setUpMovieTextView() {
        view.addSubview(movieDetailsText)
        NSLayoutConstraint.activate([
            movieDetailsText.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            movieDetailsText.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            movieDetailsText.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            movieDetailsText.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.2)
            ])
    }
}
