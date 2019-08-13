//
//  uiImageExtension.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 08/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import UIKit

extension UIImage{
    static func loadMovieImageFromUrl(imageUrl:String)->UIImage{
        var data:Data!
        do{
            data=try Data(contentsOf : URL(string: imageUrl)!)
        }catch{
            print("data error")
        }
        return UIImage(data : data)!
    }
}
