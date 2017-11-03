//
//  AnimationViewController.swift
//  DCSC
//
//  Created by Andrew Cope on 11/2/17.
//  Copyright © 2017 Andrew Cope. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {


    @IBAction func goodPressed(_ sender: Any) {
        
        self.box.isHappy = true
        
        UIView.animate(withDuration: 0.5, animations: {
            self.box.frame.origin.y -= 50
            
        })
        
        view.setNeedsDisplay()
    }
    
    
    @IBAction func badPressed(_ sender: Any) {
        
        self.box.isHappy = false
        
        UIView.animate(withDuration: 0.5, animations: {
            self.box.frame.origin.y += 50
            
        })
        
        view.setNeedsDisplay()
    }
    
    
    @IBOutlet weak var box: SmileyView!
    

}
