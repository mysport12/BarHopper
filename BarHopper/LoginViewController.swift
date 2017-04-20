//
//  LoginViewController.swift
//  BarHopper
//
//  Created by Craig Martin on 7/3/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if FBSDKAccessToken.currentAccessToken() == nil {
            
        }
        else {
            getFacebookData()
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonView(sender: FBSDKLoginButton) {
        FBSDKLoginManager.initialize()
        FBSDKLoginBehavior.Native
    }
    
    @IBAction func loginButtonPressed(sender: UIButton) {
        var user = PFUser()
        var password:String = ""
        var username:String = ""
        username = usernameTextField.text.lowercaseString
        password = passwordTextField.text
        PFUser.logInWithUsernameInBackground(username, password: password) { (user: PFUser?, error: NSError?) -> Void in
            if user != nil {
                dispatch_async(dispatch_get_main_queue()){
                self.performSegueWithIdentifier("showFavoritesViewControllerSegue", sender: nil)}
            }
            else {
                println(error)
            }
        }
    }

    @IBAction func newUserSignUpButtonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("newUserSignUpSegue", sender: self)
    }
    
    
    func getFacebookData() {
        PFFacebookUtils.logInInBackgroundWithReadPermissions(["public_profile"], block: { user, error in
            
            if user == nil {
                println("User cancelled the sign in")
            }
            else if user!.isNew {
                println("New user signed in from Facebook")
                
                let graphRequest: FBSDKGraphRequest = FBSDKGraphRequest(graphPath: "me", parameters: nil)
                    graphRequest.startWithCompletionHandler({(connection, result, error) -> Void in
                        var r = result as! NSDictionary
                        println(result)
                        user!["name"] = r["name"]
                        user!["gender"] = r["gender"]
                        user!.saveInBackgroundWithBlock({
                           success,error in
                            println(success)
                            println(error)
                        })
                    })
                println(user)
                self.performSegueWithIdentifier("showFavoritesViewControllerSegue", sender: nil)
            }
            else {
                println("User logged in through Facebook")
                println(user)
                self.performSegueWithIdentifier("showFavoritesViewControllerSegue", sender: nil)
            }
        })
    }
    
    
}