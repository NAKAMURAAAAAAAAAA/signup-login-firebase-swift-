//
//  ViewController.swift
//  login
//
//  Created by Kan Nakamura on 2019/11/17.
//  Copyright © 2019 Kan Nakamura. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func signupTapped(_ sender: Any) {
        //Authの保存方法
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (user, error) in
            if error != nil {
                print("登録できませんでした")
            }
                
            else {
                print("登録できました")
                //サインアップした後の
                //まずは、同じstororyboard内であることをここで定義します
                let storyboard: UIStoryboard = self.storyboard!
                //ここで移動先のstoryboardを選択(今回の場合は先ほどsecondと名付けたのでそれを書きます)
                let login = storyboard.instantiateViewController(withIdentifier: "login")
                //ここが実際に移動するコードとなります
                self.present(login, animated: true, completion: nil)
            }
        }
    }

}

