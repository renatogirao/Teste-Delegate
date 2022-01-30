//
//  ViewController.swift
//  TesteDelegate
//
//  Created by Renato Savoia Girão on 27/01/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var tfName: UITextField!
    @IBOutlet var tfEmail: UITextField!
    @IBOutlet var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tfName.delegate = self
        tfEmail.delegate = self
        tfPassword.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfName {
            tfEmail.becomeFirstResponder()
        }
        else if textField == tfEmail {
            tfPassword.becomeFirstResponder()
        } else {
            print("Enviando dados ao servidor")
            textField.resignFirstResponder()
        }
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return !textField.text!.isEmpty
    }
}

