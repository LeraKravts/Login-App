//
//  ViewController.swift
//  Logon App
//
//  Created by Valeriya on 27.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let user = "userName"
    private let password = "password"
    
    
    @IBAction func LoggInPressed(_ sender: Any) {
        if userNameTextField.text != user ||
            passwordTextField.text != password {
            showAlert()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomePage = segue.destination as? welcomeViewController else {
            return
        }
        welcomePage.user = userNameTextField.text ?? ""
    }
    
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "login or password wrong", message: "You should enter correct login and password", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}

