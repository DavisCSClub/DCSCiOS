//
//  CheckInViewController.swift
//  DCSC
//
//  Created by Andrew Cope on 10/19/17.
//  Copyright © 2017 Andrew Cope. All rights reserved.
//

import UIKit

struct CheckInSubmission {
    var name:String?
    var email:String?
    
    func isValid() -> Bool {
        return validateEmail(email: email)
    }
    
    func validateEmail(email:String?) -> Bool {
        if let e = email {
            if !e.contains("@") { return false }
            if !e.contains(".") { return false }
            return true
        }
        return false
    }
}


class CheckInViewController:UIViewController {
    
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func submitPressed(_ sender: Any) {
        
        let name = nameField.text
        let email = emailField.text
        
        let submission = CheckInSubmission(name: name, email: email)
        
        if submission.isValid() {
            statusLabel.text = "YESSSSSS"
        } else {
            statusLabel.text = "YOU LOSER, TYPE IN AN EMAIL"
        }
    }
    
    
}
