//
//  LogInViewController.swift
//  Project-Safe-And-Sound
//
//  Created by Lightway on 11/27/18.
//  Copyright © 2018 Lightway. All rights reserved.
//

import UIKit
import Firebase

class LogInViewController: UIViewController {

    @IBOutlet var btnLogIn: UIButton!
    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        btnLogIn.addTarget(self, action: #selector(handleSignIn), for: .touchUpInside)
       
    }
    
    @objc func handleSignIn() {
        
        //guard let username = txtEmail.text else { return }
        
        guard let email = txtEmail.text else { return }
        guard let pass = txtPassword.text else { return }
        
        
        
        Auth.auth().signIn(withEmail: email, password: pass) { user, error in
            if error == nil && user != nil {
                print("Logged In !!!!!!! ")
                self.dismiss(animated: false, completion: nil)
                self.performSegue(withIdentifier: "goto_safe_and_sound_from_login", sender: nil)
                
            } else {
                print("Error logging in: \(error!.localizedDescription)")
            }
        }
        
        
    }
    


}
