//
//  loginViewController.swift
//  login
//
//  Created by Kan Nakamura on 2019/11/17.
//  Copyright © 2019 Kan Nakamura. All rights reserved.
//

import UIKit
import Firebase

class loginViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func loginTapped(_ sender: Any) {
        //ログイン用はsignIn
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
           
            if error != nil {
            
                print("ログインできませんでした")
                
            }
            
            else {
                print("ログインできました")
            }
            
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
