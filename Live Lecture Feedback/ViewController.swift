//
//  ViewController.swift
//  Live Lecture Feedback
//
//  Created by Wing Chau on 24/3/2017.
//  Copyright © 2017 Devtography. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txt_id: UITextField!
    @IBOutlet weak var txt_pwd: UITextField!
    @IBOutlet weak var btn_login: UIButton!
    
    let limitLength = 8
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FIRAuth.auth()?.signInAnonymously(completion: { (user, error) in
            if error != nil {
                print(error as Any)
                return
            }
            
            print ("Application logged in anonymously with uid " + user!.uid)
        })
        
        txt_id.delegate = self
        txt_pwd.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField.isEqual(txt_id) {
            guard let text = textField.text else {
                return true
            }
            let newLength = text.characters.count + string.characters.count - range.length
            return newLength <= limitLength
        }
        return true
    }
    
    @IBAction func onLoginTouchDown(_ sender: Any) {
        
    }
    
}

