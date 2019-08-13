//
//  movieHeader.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 08/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import UIKit

class movieHeader:UICollectionReusableView{
    let resultTitle:UITextView={
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.font=UIFont.boldSystemFont(ofSize: 21)
        textView.textAlignment=NSTextAlignment.left
        textView.text="Movie Results"
        return textView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpResultTitle()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
