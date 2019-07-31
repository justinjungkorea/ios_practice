//
//  SecondViewController.swift
//  switchController2
//
//  Created by Dong Wook Jung on 31/07/2019.
//  Copyright © 2019 Dong Wook Jung. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    var msg : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondLabel.text = msg
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.presentingViewController?.dismiss(animated: true)
    }

}
