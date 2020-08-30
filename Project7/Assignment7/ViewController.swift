//
//  ViewController.swift
//  Assignment7
//
//  Created by Uthej Mopathi on 8/29/20.
//  Copyright © 2020 Uthej Mopathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameTextField {
        usernameTextField.resignFirstResponder()
    }   else {
    
            passwordTextField.resignFirstResponder()
    }
        return true
    }

    @IBAction func submitButtonTapped(_ sender: Any) {
        let usernameEntered = usernameTextField.text
        let passwordEntered = passwordTextField.text
        
        if usernameEntered == "abc" {
            if passwordEntered != "pqr" {
                let alertController = UIAlertController(title:"Warning", message: "Password Incorrect", preferredStyle: UIAlertController.Style.alert)
                let alertAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
                alertController.addAction(alertAction)
                present(alertController, animated: true, completion: nil)
                }
                
                
            else {
                performSegue(withIdentifier: "mainScreenSegue", sender: (Any).self)
                       
            }
        }
        else {
            let alertController = UIAlertController(title:"Warning", message: "Username Incorrect", preferredStyle: UIAlertController.Style.alert)
            let alertAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
            }
        }
    
}

    



