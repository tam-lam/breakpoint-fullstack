//
//  DataService.swift
//  practice-full-stack
//
//  Created by Graphene on 20/2/19.
//  Copyright © 2019 tam-lam. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()
class DataService{
    private var _REF_BASE = DB_BASE
    private var _REF_USER = DB_BASE.child("users")
    private var _REF_GROUPS = DB_BASE.child("groups")
    private var _REF_FEED = DB_BASE.child("feed")
    
    var REF_BASE: DatabaseReference{
        return _REF_BASE
    }
    var REF_USER: DatabaseReference{
        return _REF_USER
    }
    var REF_GROUPS: DatabaseReference{
        return _REF_GROUPS
    }
    var REF_FEED: DatabaseReference{
        return _REF_FEED
    }
    
    func createDBUser(uid:String, userData: Dictionary<String,Any>){
        REF_USER.child(uid).updateChildValues(userData)
    }
}