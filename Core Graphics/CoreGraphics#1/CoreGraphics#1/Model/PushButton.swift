//
//  PushButton.swift
//  CoreGraphics#1
//
//  Created by Solid Jaum on 08/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import UIKit


extension FloatingPoint {
    var degreesToRadians: Self { return self * .pi / 180 }
}

//With @IBDesignable we can see our design changes on storyboard, without need to run the app everytime.
@IBDesignable
class PushButton: UIButton {

    private struct Constants{
        
        static let plusLineWidth : CGFloat = 3.0
        static let plusButtonScale : CGFloat = 0.6
        static let halfPointShift : CGFloat = 0.5
        
    }
    
    private var halfWidth : CGFloat{
        
        return bounds.width / 2
        
    }
    
    private var halfHeight : CGFloat{
        
        return bounds.height / 2
        
    }
    
    
    @IBInspectable var fillColor: UIColor = UIColor.green
    @IBInspectable var isAddButton: Bool = true

    
    ///Draw our button.
    override func draw(_ rect: CGRect) {
        
        /*Creates the path for our button. Since our width and height are equals
         this path will be an circle*/
        let path = UIBezierPath(ovalIn: rect)
        
        fillColor.setFill() //Fill the actual context (Button in this case) with green color.
        path.fill() //Fill our path
        
        
        let plusWidth : CGFloat = min(bounds.width, bounds.height) * Constants.plusButtonScale // set the width and height for the line
        let halfPlusWidth = plusWidth / 2
        
        //create the path
        let plusPath = UIBezierPath()
        
        //Set the path's line width to the height of the stroke
        plusPath.lineWidth = Constants.plusLineWidth
        
        //Set the initial point of horizontal line
        plusPath.move(to: CGPoint(
            x: halfWidth - halfPlusWidth,
            y: halfHeight))
        
        
        //Set the end point of horizontal line
        plusPath.addLine(to: CGPoint(
            x: halfWidth + halfPlusWidth,
            y: halfHeight))
        
        
        if isAddButton{
            
            //Set the start point of vertical line
            plusPath.move(to: CGPoint(
                x: halfWidth,
                y: halfHeight - halfPlusWidth))
            
            //Set the end point of the vertical line
            plusPath.addLine(to: CGPoint(
                x: halfWidth,
                y: halfHeight + halfPlusWidth))
        }
        
        
        //Set the stroke color
        UIColor.white.setStroke()
        
        //Draw the stroke
        plusPath.stroke()
        
        
        
    }
 

}
