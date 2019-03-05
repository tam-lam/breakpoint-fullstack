//
//  CreateGroupVC.swift
//  practice-full-stack
//
//  Created by Graphene on 6/3/19.
//  Copyright © 2019 tam-lam. All rights reserved.
//

import UIKit

class CreateGroupVC: UIViewController {
    @IBOutlet weak var groupMemberLbl: UILabel!
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var emailTextField: InsetTextField!
    @IBOutlet weak var descriptionTextField: InsetTextField!
    @IBOutlet weak var emailSearchTextField: InsetTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func doneBtnWasPressed(_ sender: Any) {
    }
}
