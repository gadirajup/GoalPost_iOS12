//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Prudhvi Gadiraju on 10/11/18.
//  Copyright © 2018 Kore. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    @IBOutlet weak var goalTextView: UITextView!
    
    
    @IBOutlet weak var shortTermBtn: UIButton!
    
    @IBOutlet weak var longTermBtn: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func shortTermBtnPressed(_ sender: Any) {
    }
    @IBAction func longTermBtnPressed(_ sender: Any) {
    }
    @IBAction func nextBtnPressed(_ sender: Any) {
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        print("Back Button Pressed")
        dismissDetail()
    }
}