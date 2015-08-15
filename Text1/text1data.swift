//
//  text1data.swift
//  Text1
//
//  Created by Seth Du on 15/8/15.
//  Copyright © 2015年 Seth Du. All rights reserved.
//

import UIKit

class photodata{
    var name: String
    var photo: UIImage?
    var rate: Int
    init?(name:String, photo:UIImage?, rate:Int)
    {
        self.name = name
        self.photo = photo
        self.rate = rate
        if name.isEmpty || rate < 0{
            return nil
        }
    }
    
}

