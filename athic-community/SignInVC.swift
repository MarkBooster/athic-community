//
//  ViewController.swift
//  athic-community
//
//  Created by Mark Booster on 06-09-16.
//  Copyright © 2016 Mark Booster. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func facebookBtnPressed(_ sender: AnyObject) {
        
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("MARK: Unable to authenticate with Facebook - \(error)")
            } else if result?.isCancelled == true {
                print("MARK: User cancelled Facebook authentication")
            } else {
                print("MARK: Succesfully authenticated with Facebook")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                
                self.firebaseAuth(credential)
            }
        }
    }
    
    func firebaseAuth(_ credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("MARK: Unable to authenticate with Firebase - \(error)")
            } else {
                print("MARK: Succesfully authenticated with Firebase")
            }
        })
        
    }

}

