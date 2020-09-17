//
//  RandomMessageSource.swift
//  AiderTestSam-iOS
//
//  Created by Samuel Moriyasu on 17/09/20.
//  Copyright © 2020 Samuel Moriyasu. All rights reserved.
//

import UIKit
import LoremSwiftum

class RandomMessageSource: BaseMessageSource
{
    override func fetchMessages(completion : @escaping () -> Void)
    {
        DispatchQueue.global().async
        { [weak self] in
            guard let self = self else {return}
            self.generateMessages();
            DispatchQueue.main.async
            {
                completion();
            }
        }
    }
    
    func generateMessages()
    {
        let messagesToGenerate = 20;
        
        for _ in 0..<messagesToGenerate
        {
            self.messages.append(self.generateMessage());
        }
    }
    
    func generateMessage() -> MessageObject
    {
        var messageText : String;
        if(self.randomBool())
        {
            messageText = Lorem.sentence;
        }
        else
        {
            messageText = Lorem.shortTweet;
        }
        let message = MessageObject(Lorem.fullName, messageText);
        return message;
    }
    
    func randomBool() -> Bool {
        return arc4random_uniform(2) == 0
    }
}
