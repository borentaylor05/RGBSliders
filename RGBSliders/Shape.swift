//
//  Shape.swift
//  RGBSliders
//
//  Created by Taylor Boren on 6/19/15.
//  Copyright (c) 2015 Taylor Boren. All rights reserved.
//

import Foundation
import UIKit

class Shape: UIView {
    var color:UIColor
    init(color:UIColor){
        self.color = color
        super.init(frame: CGRectZero)
        self.backgroundColor = color
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getArea() -> Double {
        return 0
    }
}


class Square:Shape {
    var height: Int
    var width: Int
    init(height: Int, width: Int, color: UIColor){
        self.width = width
        self.height = height
        super.init(color: color)
        self.frame.size = CGSize(width: (width), height: (height))
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}