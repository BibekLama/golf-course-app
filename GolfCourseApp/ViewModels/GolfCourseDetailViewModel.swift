//
//  GolfCourseDetailViewModel.swift
//  GolfCourseApp
//
//  Created by Vishal on 09/08/20.
//  Copyright © 2020 bibek. All rights reserved.
//

import Foundation

class GolfCourseDetailViewModel{
    
    var golf: GolfCourse?
    
    var rating: String {
        return "\(golf?.rating ?? 0)"
    }
    
    
}
