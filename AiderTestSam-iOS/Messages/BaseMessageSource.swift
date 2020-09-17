//
//  BaseMessageSource.swift
//  AiderTestSam-iOS
//
//  Created by Samuel Moriyasu on 17/09/20.
//  Copyright © 2020 Samuel Moriyasu. All rights reserved.
//

import UIKit


class BaseMessageSource: NSObject
{
    var messages : [MessageObject] = [];
    
    subscript(index: Int) -> MessageObject {
        get {
            return messages[index];
        }
    }
    
    var count : Int
    {
        return messages.count;
    }
    
    func fetchMessages(completion : @escaping () -> Void)
    {
        // Do nothing. Override in subclass.
        fatalError("Must Override")
    }
}
