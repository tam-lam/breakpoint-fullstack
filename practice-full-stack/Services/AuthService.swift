//
//  AuthService.swift
//  practice-full-stack
//
//  Created by Graphene on 21/2/19.
//  Copyright © 2019 tam-lam. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth
class AuthService {
    
    static let instance = AuthService()
    private init(){
        
    }
    
    func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping (_ status: Bool, _ error: Error?) -> ()){
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            guard let user = authResult?.user else{
                userCreationComplete(false,error)
                return
            }
            let userData = ["provider": user.providerID,"email": user.email]
            DataService.instance.createDBUser(uid: user.uid, userData: userData as Dictionary<String, Any>)
            userCreationComplete(true, nil)
        }
    }
    func loginUser(withEmail email: String, andPassword password: String, loginComplete: @escaping (_ status: Bool, _ error: Error?) -> ()){
        Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
            if (error != nil){
                loginComplete(false,error)
                return
            }
            
            loginComplete(true, nil)
        }
    }
}
