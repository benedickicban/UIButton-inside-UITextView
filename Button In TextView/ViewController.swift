//
//  ViewController.swift
//  Test
//
//  Created by Suat Ozgur on 5/19/16.
//  Copyright © 2016 BatCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button   = UIButton(type: UIButtonType.System) as UIButton
        
        button.frame = CGRectMake(0, 0, 0, 0)
        button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        button.setTitle("itsthefinalcountdown", forState: UIControlState.Normal)
        button.backgroundColor = UIColor.yellowColor()
        button.sizeToFit()
        
        
        let buttonFrame = button.frame;
        let exclusivePath = UIBezierPath(rect: buttonFrame)
        txtView.textContainer.exclusionPaths = [exclusivePath]
        
        txtView.addSubview(button)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

