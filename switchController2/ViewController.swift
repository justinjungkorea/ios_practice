//
//  ViewController.swift
//  switchController2
//
//  Created by Dong Wook Jung on 31/07/2019.
//  Copyright © 2019 Dong Wook Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBAction func returned(segue: UIStoryboardSegue){
        firstLabel.text = "원래 자리로 돌아왔습니다."
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! SecondViewController
        destination.msg = "넘겨주는 데이터"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}

