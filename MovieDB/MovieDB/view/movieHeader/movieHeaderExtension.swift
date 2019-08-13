//
//  movieHeaderExtension.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 08/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import UIKit

extension movieHeader{
    func setUpResultTitle(){
        addSubview(resultTitle)
        NSLayoutConstraint.activate([
            resultTitle.heightAnchor.constraint(equalTo: heightAnchor),
            resultTitle.widthAnchor.constraint(equalTo: widthAnchor)
            ])
    }
}
