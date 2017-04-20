//
//  SignUpViewController.swift
//  BarHopper
//
//  Created by Craig Martin on 7/14/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    var userToken: NSString?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitButtonPressed(sender: UIButton) {
        var user = PFUser()
        user.username = userNameTextField.text.lowercaseString
        user.password = passwordTextField.text
        user.email = emailTextField.text.lowercaseString
        user.signUpInBackgroundWithBlock {
            (success: Bool, error: NSError?) -> Void in
            if error == nil {
                dispatch_async(dispatch_get_main_queue()) {
                    self.userToken = user.sessionToken!
                    self.performSegueWithIdentifier("newSignUpToFavoritesSegue", sender: self)
                }
            }
            else {
                    println(error!)
                }
            }
    }

    @IBAction func uploadImageButtonPressed(sender: UIButton) {
        UIImagePickerController.initialize()
        
    }
    
    @IBAction func cancelButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
