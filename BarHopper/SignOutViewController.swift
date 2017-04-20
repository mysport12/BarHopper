//
//  SignOutViewController.swift
//  BarHopper
//
//  Created by Craig Martin on 7/23/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit
import Parse

class SignOutViewController: UIViewController {

    @IBOutlet weak var signOutLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var user = PFUser()
        PFUser.logOut()
        signOutLabel.text = "Thank you for using BarHopper!"
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func returnToLoginButtonPressed(sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("LoginViewController") as! UIViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
}
