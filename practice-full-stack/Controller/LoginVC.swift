//
//  LoginVC.swift
//  practice-full-stack
//
//  Created by Graphene on 21/2/19.
//  Copyright © 2019 tam-lam. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: InsetTextField!
    @IBOutlet weak var passwordField: InsetTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
    }
    
    
    @IBAction func cancleWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func signInWasPressed(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil{
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!) { (success, loginError) in
                if success == true {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print(String(describing: loginError?.localizedDescription))
                }
                AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (success, registrationError) in
                    if success{
                        AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (success, nil) in
                            print("login successfully")
//                            self.dismiss(animated: true, completion: nil)
                        })
                    }else{
                        print(String(describing: registrationError?.localizedDescription))
                    }
                })
            }
        }
    }
}

extension LoginVC: UITextFieldDelegate{
    
}
