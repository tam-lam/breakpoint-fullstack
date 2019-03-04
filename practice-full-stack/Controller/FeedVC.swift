//
//  FirstViewController.swift
//  practice-full-stack
//
//  Created by Graphene on 18/2/19.
//  Copyright © 2019 tam-lam. All rights reserved.
//

import UIKit

class FeedVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var messageArray = [Message]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DataService.instance.getAllFeedMessages { (messageArray) in
            self.messageArray = messageArray
            self.tableView.reloadData()
        }
    }

}
extension FeedVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FeedCell") as? FeedCell else{ return FeedCell()}
        let image = UIImage(named: "defaultProfileImage")
        let message = messageArray[indexPath.row]
        cell.configureCell(profileImage: image!, email: message.senderId, content: message.content)
        return cell
    }
    
    
}

