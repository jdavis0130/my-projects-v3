//
//  middleVC.swift
//  orderOfEvents
//
//  Created by Levi Davis on 9/29/22.
//

import UIKit

class middleVC: UIViewController {
    
    
    @IBOutlet weak var middleVCLabel: UILabel!
    
    
 var eventNumber = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewController - view will apear")

        if let actualText = middleVCLabel.text {
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewDidLoad"
            eventNumber += 1
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewController - view will apear")
        
        if let actualText = middleVCLabel.text {
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber)is viewWillAppear"
            
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewController - view Did Appear")

        if let actualText = middleVCLabel.text {
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewDidAppear"
        
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewController - view did disappear")

        if let actualText = middleVCLabel.text {
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewWillDisappear"
            print("viewController - view will ")
        }
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewController - view did disappear")

        if let actualText = middleVCLabel.text {
            middleVCLabel.text = "\(actualText)\nEvent number \(eventNumber) is viewDidDisappear"
        }
    }
}
