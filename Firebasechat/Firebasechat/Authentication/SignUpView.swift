//
//  SignUpView.swift
//  Firebasechat
//
//  Created by Mark Kinoshita on 10/9/19.
//  Copyright © 2019 Mark Kinoshita. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class SignUpView: UIViewController {
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    
    var ref: DocumentReference? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func signUpAction(_ sender: Any) {
        
        guard let password = passwordField.text else { return }
        guard let email = emailField.text else  { return }
//        let db = Firestore.firestore()
        
        Auth.auth().createUser(withEmail: email, password: password) { user, error in
            if error == nil {
                print("user create")
                self.dismiss(animated: true, completion: nil)
            } else {
                print("failed ")
            }
            
        }
    }
}
