//
//  SecondViewController.swift
//  Todo
//
//  Created by Kasun Dissanayake on 10/3/18.
//  Copyright © 2018 Light. All rights reserved.
//

import UIKit
import Foundation
import SystemConfiguration.CaptiveNetwork

class SecondViewController: UIViewController {

    @IBOutlet weak var input: UITextField!
    
    @IBAction func addItem(_ sender: Any) {
        
        var ssid: String?
        if let interfaces = CNCopySupportedInterfaces() as NSArray? {
            for interface in interfaces {
                if let interfaceInfo = CNCopyCurrentNetworkInfo(interface as! CFString) as NSDictionary? {
                    ssid = interfaceInfo[kCNNetworkInfoKeySSID as String] as? String
                    break
                }
            }
        }
        
        if (ssid != nil)
        {
            list.append(ssid!)
        }else
        {
            list.append("ERROR !!!")
        }
       
//        if (input.text != "")
//        {
//
//           list.append(input.text!)
//            input.text = ""
//        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

