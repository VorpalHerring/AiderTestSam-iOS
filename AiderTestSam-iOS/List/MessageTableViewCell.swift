//
//  MessageTableViewCell.swift
//  AiderTestSam-iOS
//
//  Created by Samuel Moriyasu on 17/09/20.
//  Copyright © 2020 Samuel Moriyasu. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {

    @IBOutlet weak var senderLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ message: MessageObject)
    {
        self.senderLabel.text = message.sender;
        self.messageLabel.text = message.message;
    }

}
