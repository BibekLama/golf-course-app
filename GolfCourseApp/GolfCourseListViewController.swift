//
//  GolfCourseListViewController.swift
//  GolfCourseApp
//
//  Created by Bibek Lama on 8/6/20.
//  Copyright © 2020 bibek. All rights reserved.
//

import UIKit

class GolfCourseListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: GolfCourseListViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = GolfCourseListViewModel()
    }
}

extension GolfCourseListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else{
            return 0;
        }
        return viewModel.getNumberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "golfCourseCell") as? GolfTableViewCell else {
            return UITableViewCell()
        }
        
        guard let golf = viewModel?.golfCourses[indexPath.row] else {
            return UITableViewCell()
        }
        cell.configCell(golf)
        return cell
    }
}

extension GolfCourseListViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let golf = viewModel?.golfCourses[indexPath.row]
        self.performSegue(withIdentifier: "segueDetails", sender: golf)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? GolfCourseDetailViewController {
            destination.detailViewModel.golf = sender as? GolfCourse
        }
    }
    
}

