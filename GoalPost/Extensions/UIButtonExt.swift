//
//  UIButtonExt.swift
//  GoalPost
//
//  Created by Prudhvi Gadiraju on 10/14/18.
//  Copyright © 2018 Kore. All rights reserved.
//

import UIKit

extension UIButton {
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.2956833659, green: 0.5236129164, blue: 0.6666666865, alpha: 1)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
    }
}
