//
//  ViewController.swift
//  switchController
//
//  Created by Dong Wook Jung on 25/07/2019.
//  Copyright © 2019 Dong Wook Jung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var subData : String!
    @IBOutlet weak var lblMain: UILabel!
    @IBAction func moveNext(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let second = storyboard.instantiateViewController(withIdentifier: "Second") as! SecondViewController
        second.data = "상위 뷰 컨트롤러에서 전달하는 데이터"
        second.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
        self.present(second, animated:true){ () in print("두번째 뷰 컨트롤러로 이동 후 실행") }
        print("두번째 뷰 컨트롤러로 이동 후 실행된다는 보장이 없습니다.")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let text = subData{
            lblMain.text = text
        }
    }


}

