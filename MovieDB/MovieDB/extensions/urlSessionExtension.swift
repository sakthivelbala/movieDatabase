//
//  urlSessionExtension.swift
//  MovieDB
//
//  Created by Sakthivel Balakrishnan on 06/08/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import Foundation

extension URLSession{
    static func getMovieData(backendUrl:String,onComplete:@escaping (page?,Error?)->()){
        guard let url=URL(string: backendUrl) else{return}
        self.shared.dataTask(with: url) { (data, response, err) in
            DispatchQueue.main.async{
                if let err=err{
                    onComplete(nil,err)
                    return
                }
                guard let data=data else{return}
                do{
                    let decoder=JSONDecoder()
                    let decodedData=try decoder.decode(page.self, from: data)
                    onComplete(decodedData,nil)
                }catch let jsonErr{
                    onComplete(nil,jsonErr)
                }
            }
        }.resume()
    }
    
}
