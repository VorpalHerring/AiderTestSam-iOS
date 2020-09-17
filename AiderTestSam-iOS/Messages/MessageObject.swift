//
//  MessageObject.swift
//  AiderTestSam-iOS
//
//  Created by Samuel Moriyasu on 17/09/20.
//  Copyright © 2020 Samuel Moriyasu. All rights reserved.
//

import UIKit

class MessageObject: NSObject {
    var sender :String = "";
    var message :String = "";
    
    init(_ sender : String, _ message : String)
    {
        self.sender = sender;
        self.message = message;
    }
}
