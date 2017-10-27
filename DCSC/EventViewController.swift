//
//  EventViewController.swift
//  DCSC
//
//  Created by Andrew Cope on 10/26/17.
//  Copyright © 2017 Andrew Cope. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var event = Event(title:"default event")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = event.title
        dateLabel.text = "[date goes here]"
    }




}
