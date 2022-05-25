//
//  ViewController.swift
//  Contest
//
//  Created by Joy Marie on 5/24/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var textField: UITextField!
    let emailTextField = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }
    
    @IBAction func submitButtonPress(_ sender: UIButton) {
        
        textField.resignFirstResponder()
        if textField.text == emailTextField {
            UIView.animate(withDuration: 0.1, delay: 0.0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
                self.textField.center.x += 10
            }, completion: nil)
            
            UIView.animate(withDuration: 0.1, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
                self.textField.center.x -= 20
            }, completion: nil)
            
            UIView.animate(withDuration: 0.1, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseIn, animations: {
                self.textField.center.x += 10
            }, completion: nil)

        } else {
            textField.text = ""

            performSegue(withIdentifier: "unwindSegue", sender: self)
        }
    }
}
