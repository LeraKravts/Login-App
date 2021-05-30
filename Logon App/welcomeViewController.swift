//
//  ViewController2.swift
//  Logon App
//
//  Created by Valeriya on 28.05.2021.
//

import Foundation

import UIKit

class welcomeViewController: UIViewController {
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)!"
    }

    @IBOutlet weak var welcomeLabel: UILabel!
}

