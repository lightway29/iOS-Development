//
//  ViewController.swift
//  pod-test
//
//  Created by Lightway on 10/3/18.
//  Copyright © 2018 Lightway. All rights reserved.
//

import UIKit
import SVProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.setDefaultMaskType(.black)
        SVProgressHUD.show(withStatus: "Done")
        // Do any additional setup after loading the view, typically from a nib.
    }


}

