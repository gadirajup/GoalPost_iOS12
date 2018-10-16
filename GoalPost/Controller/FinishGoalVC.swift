//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Prudhvi Gadiraju on 10/14/18.
//  Copyright © 2018 Kore. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController {

    @IBOutlet weak var valueTextField: UITextField!
    @IBOutlet weak var finishBtn: UIButton!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    var swipeGesture: UISwipeGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        finishBtn.bindToKeyboard()
        
        swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeGesture.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeGesture)
    }
    
    func initData(description: String, type: GoalType) {
        goalDescription = description
        goalType = type
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    @IBAction func finishBtnPressed(_ sender: Any) {
        if valueTextField.text != "" {
            self.saved { (complete) in
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @objc func swiped() {
        dismissDetail()
    }
    
    func saved(completition: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalProgress = 0
        goal.goalCompletionValue = Int32(valueTextField.text!)!
        
        do {
            try managedContext.save()
            completition(true)
            print("Saved Successfully")
        } catch {
            debugPrint("Was not able to save because of \(error.localizedDescription)")
            completition(false)
        }
    }
}
