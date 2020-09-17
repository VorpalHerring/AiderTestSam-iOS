//
//  ViewController.swift
//  AiderTestSam-iOS
//
//  Created by Samuel Moriyasu on 17/09/20.
//  Copyright © 2020 Samuel Moriyasu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var messageListTableView: UITableView!
    
    let messageSource : BaseMessageSource = RandomMessageSource();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.messageSource.fetchMessages(completion:
        {
            
            self.messageListTableView.reloadData();
        });
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return messageSource.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath) as! MessageTableViewCell;
        
        let message = self.messageSource[indexPath.row];
        cell.configure(message);
        return cell
    }

}

