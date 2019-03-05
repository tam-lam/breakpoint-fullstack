//
//  AuthVC.swift
//  practice-full-stack
//
//  Created by Graphene on 21/2/19.
//  Copyright © 2019 tam-lam. All rights reserved.
//

import UIKit
import Firebase

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil{
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func signInWithEmailWasPressed(_ sender: Any) {
        guard let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC") else {return}
        self.present(loginVC, animated: true, completion: nil)
    }
    
    @IBAction func signInWithGoogleWasPressed(_ sender: Any) {
    }
    
    @IBAction func signInWithFacebookWasPressed(_ sender: Any) {
    }
    

}
