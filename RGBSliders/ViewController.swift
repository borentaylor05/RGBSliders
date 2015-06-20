//
//  ViewController.swift
//  RGBSliders
//
//  Created by Taylor Boren on 6/19/15.
//  Copyright (c) 2015 Taylor Boren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        preview.layer.borderColor = UIColor.blackColor().CGColor
        preview.layer.borderWidth = 1
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var red: UISlider!
    @IBOutlet weak var green: UISlider!
    @IBOutlet weak var blue: UISlider!
    @IBOutlet weak var preview: UIView!
    
    @IBAction func updateBackgroundColor(){
        preview.backgroundColor = UIColor(red: CGFloat(red.value), green: CGFloat(green.value), blue: CGFloat(blue.value), alpha: 1.0)
    }

}

