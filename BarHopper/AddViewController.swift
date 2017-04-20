//
//  AddViewController.swift
//  BarHopper
//
//  Created by Craig Martin on 7/13/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit
import Parse

class AddViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var stateField: UITextField!
    @IBOutlet weak var businessImage: UIImageView!

    var businessUser: PFUser = PFUser()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButton(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func uploadImageButtonPressed(sender: UIButton) {
        
        
    }
    
    @IBAction func submitButtonPressed(sender: UIButton) {
        
//        if (PFQuery.valueForKey("businessName") == nameField.text && PFQuery.valueForKey("businessCity") == cityField.text && PFQuery.valueForKey("businessState") == stateField.text) {
            var existsAlert = UIAlertController(title: "Place Already Exists", message: "The place you are trying to add already exists", preferredStyle: UIAlertControllerStyle.Alert)
            existsAlert.addAction(UIAlertAction(title: "Place Already Exists", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(existsAlert, animated: true, completion: nil)

        businessUser.signUp()
        businessUser.setValue(nameField.text, forKey: "businessName")
        businessUser.setValue(addressField.text, forKey: "businessAddress")
        businessUser.setValue(cityField.text, forKey: "businessCity")
        businessUser.setValue(stateField.text, forKey: "businessState")
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
