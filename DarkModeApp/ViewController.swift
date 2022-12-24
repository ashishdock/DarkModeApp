//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Ashish Sharma on 12/24/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load")
//        overrideUserInterfaceStyle = .light
        // can do the same thing from info.plist bu changing the value of 'Appearance' key to 'Light' or 'Dark'
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View will appear")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View will disappear!")
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        
        print("Trait Collection Did Change")
        let userInterface = traitCollection.userInterfaceStyle
        
        if userInterface == .dark {
            changeButton.tintColor = UIColor.white
        } else {
            changeButton.tintColor = .blue
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View did disappear!")
    }
    
}

