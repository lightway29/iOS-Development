//
//  SignUpViewController.swift
//  Project-Safe-And-Sound
//
//  Created by Lightway on 11/27/18.
//  Copyright © 2018 Lightway. All rights reserved.
//
import Foundation
import UIKit
import Firebase

class SignUpViewController: UIViewController {

    @IBOutlet var txtEmail: UITextField!
    @IBOutlet var txtPassword: UITextField!
    @IBOutlet var btnSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSignUp.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    @objc func handleSignUp() {

        guard let username = txtEmail.text else { return }

        guard let email = txtEmail.text else { return }
        guard let pass = txtPassword.text else { return }
        
    
        
        Auth.auth().createUser(withEmail: email, password: pass) { user, error in
            if error == nil && user != nil {
                print("User created!")
                
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = username
                
                changeRequest?.commitChanges { error in
                    if error == nil {
                        print("User display name changed!")
                        self.dismiss(animated: false, completion: nil)
                    } else {
                        print("Error: \(error!.localizedDescription)")
                    }
                }
                
            } else {
                print("Error: \(error!.localizedDescription)")
            }
        }
        
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
