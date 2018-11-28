//
//  SafeAndSoundViewController.swift
//  Project-Safe-And-Sound
//
//  Created by Lightway on 11/28/18.
//  Copyright © 2018 Lightway. All rights reserved.
//

import UIKit

class SafeAndSoundViewController: UIViewController {

    
    @IBOutlet var btnContacts: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
     func handleSignOut(){
        self.dismiss(animated: false, completion: nil)
        self.performSegue(withIdentifier: "goto_login_from_safe_and_sound", sender: nil)
        
    }


}
