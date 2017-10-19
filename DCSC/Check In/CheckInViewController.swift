//
//  CheckInViewController.swift
//  DCSC
//
//  Created by Andrew Cope on 10/19/17.
//  Copyright © 2017 Andrew Cope. All rights reserved.
//

import UIKit

struct CheckInSubmission {
    var string:String?;
    var email:String?;
    
    func validate(email:String?) -> Bool {
        if let e = email {
            if !e.contains("@") { return false }
            if !e.contains(".") { return false }
        } else {
            return false;
        }
        return true
    }
    
    func validate(name:String?) -> Bool {
        if let n = name {
            if !n.contains(" ") { return false }
        } else {
            return false
        }
        
        return true
    }
}

class CheckInViewController: UIViewController {

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
