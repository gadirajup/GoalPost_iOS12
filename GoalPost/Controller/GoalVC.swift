//
//  GoalVC.swift
//  GoalPost
//
//  Created by Prudhvi Gadiraju on 10/11/18.
//  Copyright © 2018 Kore. All rights reserved.
//

import UIKit

class GoalVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func newGoalBtnPressed(_ sender: Any) {
        print("New Goal Pressed")
    }
    
}

