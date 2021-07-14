//
//  WelcomeViewController.swift
//  NemchenkovVG_HW2.3
//
//  Created by Владимир Немченков on 13.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcomeUserText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeUserText
}
}
