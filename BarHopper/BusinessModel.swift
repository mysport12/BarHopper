//
//  BusinessModel.swift
//  BarHopper
//
//  Created by Craig Martin on 7/6/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit
import Parse

class BusinessModel: PFObject {
    var name = PFObject(className: "name")
    var address = PFObject(className: "address")
    var city = PFObject(className: "city")
    var state = PFObject(className: "state")
    var image = PFObject(className: "image")
    var trivia = PFObject(className: "trivia")
    var hours = PFObject(className: "hours")
    var website = PFObject(className: "website")
}
