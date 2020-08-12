//
//  GolfCourseCellViewModel.swift
//  GolfCourseApp
//
//  Created by Vishal on 09/08/20.
//  Copyright © 2020 bibek. All rights reserved.
//

import Foundation
import UIKit

class GolfCourseCellViewModel{
    func getImage(_ golfCourse: GolfCourse) -> UIImage? {
        return UIImage.init(named: golfCourse.image) ?? nil
    }
    
    func getName(_ golfCourse: GolfCourse) -> String{
        return golfCourse.name
    }
    
    func getRating(_ golfCourse: GolfCourse) -> String {
        return "\(golfCourse.rating)"
    }
    
    func getDesc(_ golfCourse: GolfCourse) -> String {
        return golfCourse.desc
    }
    
    func getTel(_ golfCourse: GolfCourse) -> String {
        return golfCourse.tel
    }
    
    func getAddress(_ golfCourse: GolfCourse) -> String {
        return golfCourse.address
    }
    
    func getOpen(_ golfCourse: GolfCourse) -> String {
        return golfCourse.open
    }
    
    func getLink(_ golfCourse: GolfCourse) -> String {
        return golfCourse.link
    }

}
