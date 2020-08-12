//
//  GolfTableViewCell.swift
//  GolfCourseApp
//
//  Created by Vishal on 8/6/20.
//  Copyright © 2020 bibek. All rights reserved.
//

import UIKit

class GolfTableViewCell: UITableViewCell {

    
    @IBOutlet weak var golfThumb: UIImageView!
    
    @IBOutlet weak var golfName: UILabel!
    
    @IBOutlet weak var golfAddress: UILabel!
    
    @IBOutlet weak var golfRating: UILabel!
    
    var viewModel : GolfCourseCellViewModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        viewModel = GolfCourseCellViewModel()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(_ golf : GolfCourse?){
        
        guard let golf = golf else {
            return
        }
        
        golfName.text = viewModel?.getName(golf)
        golfAddress.text = viewModel?.getAddress(golf)
        golfThumb.image = viewModel?.getImage(golf)
        golfRating.text = viewModel?.getRating(golf)
    }

}
