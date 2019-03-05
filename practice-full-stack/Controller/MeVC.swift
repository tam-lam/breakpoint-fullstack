//
//  MeVC.swift
//  practice-full-stack
//
//  Created by Graphene on 2/3/19.
//  Copyright © 2019 tam-lam. All rights reserved.
//

import UIKit
import Firebase
class MeVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signOutBtnWasPressed(_ sender: Any) {
        let logoutPopUp = UIAlertController(title: "Logout?", message: "Are you sure?", preferredStyle: .actionSheet)
        let logoutAction = UIAlertAction(title: "Logout", style: .destructive) { (buttonTapped) in
            do{
                try Auth.auth().signOut()
                let authVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthVC")
                self.present(authVC!, animated: true, completion: nil)
            }catch{
                print(error)
            }
        }
        logoutPopUp.addAction(logoutAction)
        present(logoutPopUp, animated: true, completion: nil)
    }

}
