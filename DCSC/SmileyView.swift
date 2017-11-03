//
//  SmileyView.swift
//  DCSC
//
//  Created by Andrew Cope on 11/2/17.
//  Copyright © 2017 Andrew Cope. All rights reserved.
//

import UIKit

class SmileyView: UIView {

    var isHappy = true {
        didSet {
            setNeedsDisplay()
        }
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        if isHappy {
            drawSmiley()
        } else {
            drawFrowny()
        }
        
        
    }
    
    func drawSmiley() {
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 18, y: 30, width: 12, height: 12))
        UIColor.gray.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: 60.02, y: 30, width: 12, height: 12))
        UIColor.gray.setFill()
        oval2Path.fill()
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 85.5, y: 57.32))
        bezierPath.addLine(to: CGPoint(x: 72.85, y: 70.82))
        bezierPath.addLine(to: CGPoint(x: 46.52, y: 82.64))
        bezierPath.addLine(to: CGPoint(x: 23.65, y: 82.64))
        bezierPath.addLine(to: CGPoint(x: 16.25, y: 57.32))
        bezierPath.addLine(to: CGPoint(x: 85.5, y: 57.32))
        bezierPath.close()
        UIColor.gray.setFill()
        bezierPath.fill()
    }
    
    func drawFrowny() {
        
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 18, y: 30, width: 12, height: 12))
        UIColor.gray.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: 60.02, y: 30, width: 12, height: 12))
        UIColor.gray.setFill()
        oval2Path.fill()
        
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 18, y: 76.07))
        bezierPath.addLine(to: CGPoint(x: 35.77, y: 42))
        bezierPath.addLine(to: CGPoint(x: 54.18, y: 42))
        bezierPath.addLine(to: CGPoint(x: 72.02, y: 76.07))
        UIColor.black.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()
    }
    

}
