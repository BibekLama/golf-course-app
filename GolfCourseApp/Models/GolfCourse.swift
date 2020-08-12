//
//  GolfCourse.swift
//  GolfCourseApp
//
//  Created by Bibek Lama on 09/08/20.
//  Copyright © 2020 bibek. All rights reserved.
//

import Foundation

class GolfCourse{
    var image: String
    var name: String
    var email: String
    var tel: String
    var open: String
    var address: String
    var desc: String
    var rating: Double
    var link: String
    
    
    init(image: String, name: String,address: String, tel: String, email: String, desc: String, rating: Double, open: String,   link: String){
        self.image = image
        self.name = name
        self.email = email
        self.tel = tel
        self.open = open
        self.address = address
        self.desc = desc
        self.rating = rating
        self.link = link
    }
}
