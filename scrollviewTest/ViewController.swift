//
//  ViewController.swift
//  scrollviewTest
//
//  Created by Dong Wook Jung on 19/07/2019.
//  Copyright © 2019 Dong Wook Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView:UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image:UIImage! = UIImage(named: "yosemeti.jpg")
        imageView = UIImageView(image: image)
        imageView?.isUserInteractionEnabled = true
        let imageSize = imageView!.frame.size
        let scrollView = UIScrollView(frame: UIScreen.main.bounds)
        scrollView.isScrollEnabled = true
        scrollView.contentSize = imageSize
        scrollView.addSubview(imageView!)
        self.view.addSubview(scrollView)
        
        scrollView.maximumZoomScale = 2.0
        scrollView.minimumZoomScale = 0.1
        scrollView.delegate = self
    }
    
    

}

extension ViewController:UIScrollViewDelegate{
    func viewForZooming(in scrollView:UIScrollView) -> UIView? {
        return imageView
    }
}
