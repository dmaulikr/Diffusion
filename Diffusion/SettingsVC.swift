//
//  SettingsVC.swift
//  Diffusion
//
//  Created by Baynham Makusha on 10/9/16.
//  Copyright © 2016 Ben Makusha. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class SettingsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signOutPressed(_ sender: AnyObject) {
        let keychainResult = KeychainWrapper.standard.removeObject(forKey: KEY_UID)
        print("BEN: removed id from keychain \(keychainResult)")
        try! FIRAuth.auth()?.signOut()
        performSegue(withIdentifier: "goToSignIn", sender: nil)
    }

}
