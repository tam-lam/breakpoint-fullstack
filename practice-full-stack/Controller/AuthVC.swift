//
//  AuthVC.swift
//  practice-full-stack
//
//  Created by Graphene on 21/2/19.
//  Copyright © 2019 tam-lam. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
