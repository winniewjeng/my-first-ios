//
//  WorkSpace.swift
//  Art61_BasicTemplate
//
//  Created by MASOOD KAMANDY and WINNIE JENG on 8/31/19.
//  Copyright © 2018 Masood Kamandy. All rights reserved.
//

import UIKit
import C4

class WorkSpace: CanvasController {
    
    override func setup() {
        
        // set background color
        // self.canvas.backgroundColor = Color(red: 31, green: 99, blue: 124, alpha: 1.0)
        self.canvas.backgroundColor = black
        
        // Add text
        let quote = "Coding is fun"
        let f = Font(name: "Helvetica", size: 40)!
        let textShape = TextShape.init(text: quote, font: f)!
        textShape.center = Point(canvas.center.x, canvas.height/3)
        textShape.fillColor = C4Grey
        canvas.add(textShape)
        
        // Draw Stars
        let star1 = Star(center: canvas.center, pointCount: 5, innerRadius: 40, outerRadius: 100)
        star1.fillColor = Color(red: 0.75, green:0.0, blue:0.0, alpha:1.0)
        star1.transform = Transform.makeRotation(M_PI_4) // rotate star 1
        canvas.add(star1)
        let star2 = Star(center: canvas.center, pointCount: 5, innerRadius: 40, outerRadius: 100)
        star2.fillColor = Color(red: 0.74, green:0.63, blue:0.0, alpha:1.0)
        star2.transform = Transform.makeRotation(M_PI_2) // rotate star 1
        canvas.add(star2)
        
        
    }
    
    
}
