//
//  ViewController.swift
//  gestureTest
//
//  Created by Dong Wook Jung on 18/07/2019.
//  Copyright © 2019 Dong Wook Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.center = self.view.center
        imageView.image = UIImage.init(named: "image.png")
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        imageView.isUserInteractionEnabled = true
        self.view.addSubview(imageView)
        
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(tapGestureMethod))
        tap.numberOfTapsRequired = 2
        imageView.addGestureRecognizer(tap)
        
        let pinch = UIPinchGestureRecognizer.init(target: self, action: #selector(pinchGestureMethod))
        imageView.addGestureRecognizer(pinch)
    }
    
    @objc func tapGestureMethod(sender:UITapGestureRecognizer){
        if sender.view!.contentMode == UIView.ContentMode.scaleAspectFit{
            sender.view!.contentMode = UIView.ContentMode.center
        } else {
            sender.view!.contentMode = UIView.ContentMode.scaleAspectFit
        }
    }
    
    var oldScale : CGFloat = 1.0
    
    @objc func pinchGestureMethod(sender:UIPinchGestureRecognizer){
        let newScale = sender.scale
        if(newScale>1){
            imageView.transform = CGAffineTransform(scaleX: oldScale + (newScale-1), y: oldScale + (newScale-1))
        } else {
            imageView.transform = CGAffineTransform(scaleX: oldScale*newScale, y: oldScale*newScale)
        }
        
        if sender.state == UIPinchGestureRecognizer.State.ended{
            if(newScale > 1){
                oldScale += (newScale - 1)
            } else {
                oldScale *= newScale
            }
        }
    }


}

