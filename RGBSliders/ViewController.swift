//
//  ViewController.swift
//  RGBSliders
//
//  Created by Taylor Boren on 6/19/15.
//  Copyright (c) 2015 Taylor Boren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var red: UISlider!
    @IBOutlet weak var green: UISlider!
    @IBOutlet weak var blue: UISlider!
    @IBOutlet weak var preview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        preview.layer.borderColor = UIColor.blackColor().CGColor
        preview.layer.borderWidth = 1
        let defaults = NSUserDefaults.standardUserDefaults()
        red.value = defaults.floatForKey("red")
        green.value = defaults.floatForKey("green")
        blue.value = defaults.floatForKey("blue")
        updateBackgroundColor()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "openColor"){
            let newViewController = segue.destinationViewController as! UIViewController
            newViewController.view.backgroundColor = preview.backgroundColor
        }
    }
    
    @IBAction func updateBackgroundColor(){
        preview.backgroundColor = UIColor(red: CGFloat(red.value), green: CGFloat(green.value), blue: CGFloat(blue.value), alpha: 1.0)
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setFloat(red.value, forKey: "red")
        defaults.setFloat(green.value, forKey: "green")
        defaults.setFloat(blue.value, forKey: "blue")
        defaults.synchronize() // save values to device
    }

}

