//
//  AndrewViewController.swift
//  DCSC
//
//  Created by Andrew Cope on 10/12/17.
//  Copyright © 2017 Andrew Cope. All rights reserved.
//

import UIKit

class AndrewViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        bottomLabel.text = "I love Apple!"
    }
    
}
