//
//  SecondViewController.swift
//  SwiftLesson01
//
//  Created by ueda on 2018/08/21.
//  Copyright © 2018年 kohei.ueda. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func close(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
