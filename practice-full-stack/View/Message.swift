//
//  Message.swift
//  practice-full-stack
//
//  Created by Graphene on 4/3/19.
//  Copyright © 2019 tam-lam. All rights reserved.
//

import Foundation
class Message{
    
    private var _content:String
    private var _senderId:String
    var content: String{
        return _content
    }
    var senderId: String{
        return _senderId
    }
    init(content: String, senderId: String) {
        self._senderId = senderId
        self._content = content
    }
}
