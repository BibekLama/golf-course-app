//
//  GolfCourseDetailViewController.swift
//  GolfCourseApp
//
//  Created by Vishal on 09/08/20.
//  Copyright © 2020 bibek. All rights reserved.
//

import UIKit

class GolfCourseDetailViewController: UIViewController {
    
    var detailViewModel = GolfCourseDetailViewModel()
    
    @IBOutlet weak var golfCourseName: UILabel!
    
    @IBOutlet weak var golfCourseAddress: UILabel!
    
    @IBOutlet weak var golfCourseTel: UILabel!
    
    @IBOutlet weak var golfCourseDesc: UILabel!
    
    @IBOutlet weak var golfCourseImage: UIImageView!
    
    @IBOutlet weak var golfCourseRating: UILabel!
    
    @IBOutlet weak var golfCourseOpen: UILabel!
    
    @IBOutlet weak var golfCourseLink: UILabel!
    
    @IBOutlet weak var golfCourseEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let golf = detailViewModel.golf else {
            return
        }
        
        golfCourseImage.image = UIImage.init(named: golf.image)
        golfCourseName.text = golf.name
        golfCourseAddress.text = golf.address
        golfCourseTel.text = golf.tel
        golfCourseDesc.text = golf.desc
        golfCourseRating.text = detailViewModel.rating
        golfCourseOpen.text = golf.open
        golfCourseEmail.text = golf.email
        golfCourseLink.text = golf.link
        
    }

}
