//
//  Button.swift
//  MyFirstTestingLib
//
//  Created by Dmitriy Aleynikov on 12/11/2017.
//  Copyright © 2017 Dmitriy Aleynikov. All rights reserved.
//

import UIKit

class Button: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUp()
    }
    
    func setUp() -> Void {
        self.backgroundColor = UIColor.green
        self.setTitleColor(UIColor.white, for: UIControlState.normal)
        self.layer.cornerRadius = 2
        self.addTarget(self, action: #selector(isPressed), for: UIControlEvents.touchUpInside)
        self.addTarget(self, action: #selector(isUnPressed), for: UIControlEvents.touchCancel)
    }
    
    @objc func isPressed() -> Void {
        self.layer.shadowOpacity = 0.7
    }
    
    @objc func isUnPressed() -> Void {
        self.layer.shadowOpacity = 0.0
    }
}
