//
//  ViewController.swift
//  touchevent
//
//  Created by Dong Wook Jung on 18/07/2019.
//  Copyright © 2019 Dong Wook Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if touch!.view == imageView{
            let pt : CGPoint = touch!.location(in: view)
            label1.text = "x:\(pt.x) y:\(pt.y)"
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first
        if touch!.view == imageView{
            let pt : CGPoint = touch!.location(in: view)
            label1.text = "x:\(pt.x) y:\(pt.y)"
            imageView.center = touch!.location(in: view)
        }
    }
}

