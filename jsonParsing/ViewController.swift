//
//  ViewController.swift
//  jsonParsing
//
//  Created by Dong Wook Jung on 25/07/2019.
//  Copyright © 2019 Dong Wook Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
    typealias MovieRecord = (title:String, imageUrl:String)

    override func viewDidLoad() {
        super.viewDidLoad()
        let addr = "http://swiftapi.rubypaper.co.kr:2029/hoppin/movies?version=1&page=1&count=20&genreId=&order=releasedateasc"
        
        let url = URL(string: addr)
        
        let data = try! Data(contentsOf: url!)
        
        let jsonResult = try! JSONSerialization.jsonObject(with: data, options: []) as! NSDictionary
        
        let hoppin = jsonResult["hoppin"] as! NSDictionary
        let movies = hoppin["movies"] as! NSDictionary
        let movie = movies["movie"] as! NSDictionary
        
        for temp in movie{
            let imsi = temp as! NSDictionary
            let title = imsi["title"] as! String
            let thumbnailImage = imsi["thumbnailImage"] as! String
            
            MovieRecord.append((title:title, imageUrl:thumbnailImage))
        }
    }

    

}

