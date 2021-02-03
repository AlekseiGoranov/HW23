//
//  ViewController.swift
//  HW23
//
//  Created by Алексей Горанов on 03.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UserNameTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    let user = User()
    
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let WelcomeVC = segue.destination as? WelcomeViewController else { return }
        WelcomeVC.userName = "Welcome, \(user.login)"
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        UserNameTextField.text = ""
        PasswordTextField.text = ""
    }
    @IBAction func ForgetUserNameButton() {
        showAlert(with: "Some problem?", and: "You name is \(user.login)")
    }
    
    @IBAction func ForgetPasswordButton() {
        showAlert(with: "Some problem?", and: "You passowrd is \(user.password)" )
    }
   
    
    @IBAction func LogInAction() {
        if UserNameTextField.text != user.login || PasswordTextField.text != user.password {
            showAlert(with: "Some problem", and: "Your login or passord is wrong")
            PasswordTextField.text = ""
            return
        }
    }
}

// Mark - Button

extension ViewController {
 
    class GroupOfUsers {
        var login: String {
            "login"
        }
        var password: String {
            "password"
        }
    }
    class User: GroupOfUsers {
        override var login: String {
            "User"
        }
        override var password: String {
            "Password"
        }
    }
    
    
    
    

    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

