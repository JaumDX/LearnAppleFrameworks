//
//  PushButton.swift
//  CoreGraphics#1
//
//  Created by Solid Jaum on 08/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import UIKit

class PushButton: UIButton {

    
    ///Draw our button.
    override func draw(_ rect: CGRect) {
        
        /*Creates the path for our button. Since our width and height are equals
         this path will be an circle*/
        let path = UIBezierPath(ovalIn: rect)
        
        UIColor.green.setFill() //Fill the actual context (Button in this case) with green color.
        path.fill() //Fill our path
        
    }
 

}
