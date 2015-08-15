//
//  ratingcontrol.swift
//  Text1
//
//  Created by Seth Du on 15/8/15.
//  Copyright © 2015年 Seth Du. All rights reserved.
//

import UIKit

class ratingcontrol: UIView {
    
    var rating = 0{
        didSet{
                setNeedsLayout()
        }
    }
    var spacing = 5
    var stars = 5
    var ratingbutton = [UIButton]()
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            let filledimage = UIImage(named: "filled")
            let emptyimage = UIImage (named: "empty")
            
            
            
            for _ in 0..<stars {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
            button.setImage(emptyimage, forState: .Normal)
            button.setImage(filledimage, forState: .Selected)
            button.setImage(filledimage, forState: [.Highlighted, .Selected])
            button.adjustsImageWhenHighlighted = false
            
            button.addTarget(self, action: "ratingButtontapped:", forControlEvents: .TouchDown)
            ratingbutton += [button]
            addSubview(button)
            
            }
            
            
            
        }
    func ratingButtontapped(button:UIButton){
        rating = ratingbutton.indexOf(button)!+1
        updateButtonstates()
    }
    
    func updateButtonstates(){
        for (index,button) in ratingbutton.enumerate(){
            button.selected = index < rating
        }
    }
    override func layoutSubviews() {
        
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        for (index, button) in ratingbutton.enumerate(){
            buttonFrame.origin.x = CGFloat( index * (buttonSize + spacing))
            
            button.frame = buttonFrame
        }
    }

}
