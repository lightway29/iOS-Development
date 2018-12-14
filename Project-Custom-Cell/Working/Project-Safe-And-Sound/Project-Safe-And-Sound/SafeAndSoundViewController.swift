//
//  SafeAndSoundViewController.swift
//  Project-Safe-And-Sound
//
//  Created by Lightway on 11/28/18.
//  Copyright © 2018 Lightway. All rights reserved.
//

import UIKit
import Firebase

class SafeAndSoundViewController: UIViewController {

    @IBOutlet var btnContacts: UIButton!
    @IBOutlet var btnSilent: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSilent.layer.cornerRadius = 0.5 * btnSilent.bounds.size.width

    }
    
    @IBAction func handleSignOut(_ sender: Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }



}
