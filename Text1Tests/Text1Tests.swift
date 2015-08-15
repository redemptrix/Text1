//
//  Text1Tests.swift
//  Text1Tests
//
//  Created by Seth Du on 15/8/9.
//  Copyright © 2015年 Seth Du. All rights reserved.
//
import UIKit
import XCTest
@testable import Text1

class Text1Tests: XCTestCase {
    
    func test1initialization()
    {
        let potentialitem = photodata(name: "newest Photo", photo: nil, rate: 5)
        XCTAssertNotNil(potentialitem)
        
        let noname = photodata(name: "", photo: nil, rate: 0)
        XCTAssertNil(noname, "Empty photo is invalid")
        
        let badrating = photodata(name: "bad rating", photo: nil, rate: -1)
        XCTAssertNil(badrating, "It's really a bad rating")
    }
    
}
