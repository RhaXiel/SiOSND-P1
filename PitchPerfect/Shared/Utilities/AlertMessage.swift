//
//  AlertMessage.swift
//  PitchPerfect
//
//  Created by RhaXiel on 5/1/22.
//

import Foundation

class AlertMessage{
    var Title : String
    var Message : String
    var Button : String
    
    init(_ Title: String, _ Message: String, _ Button: String) {
        self.Title = Title
        self.Message = Message
        self.Button = Button
    }
}
