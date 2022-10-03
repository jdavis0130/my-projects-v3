//
//  ViewController.swift
//  flashlight
//
//  Created by Levi Davis on 9/9/22.
//

import UIKit

class ViewController: UIViewController {
    
   
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    fileprivate func updateUI() {
        view.backgroundColor = lightOn ? .white : .black 
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
    lightOn.toggle()
updateUI()
    }
}

