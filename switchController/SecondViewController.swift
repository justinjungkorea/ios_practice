//
//  SecondViewController.swift
//  switchController
//
//  Created by Dong Wook Jung on 31/07/2019.
//  Copyright © 2019 Dong Wook Jung. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var lblSecond: UILabel!
    @IBAction func movePrev(_ sender: Any) {
        let viewController = self.presentingViewController as! ViewController
        viewController.subData = "하위 뷰 컨트롤러에서 넘겨준 데이터"
        viewController.dismiss(animated: true)
    }
    
    var data : String!
    
    override func viewDidLoad() {
        lblSecond.text = data
    }
}
