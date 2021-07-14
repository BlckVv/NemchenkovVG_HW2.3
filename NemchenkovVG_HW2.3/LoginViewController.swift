//
//  ViewController.swift
//  NemchenkovVG_HW2.3
//
//  Created by Владимир Немченков on 13.07.2021.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        if userNameTF.text == "User" && passwordTF.text == "123456" {
            if let userNameText = userNameTF.text {
                welcomeVC.welcomeUserText = "Welcome, \(userNameText)!"
            }
        } else {
            showAlert(title: "Oops!", message: "Wrong username or password. Try again.")
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(title: "Oops!", message: "Your user name is User")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Oops!", message: "Your password is '123456' ")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let welcomeVC = segue.source as? WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
