//
//  SearchViewController.swift
//  BarHopper
//
//  Created by Craig Martin on 7/23/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit
import Parse

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButtonPressed(sender: UIButton) {
        performSegueWithIdentifier("showAddPlace", sender: self)
    }
}
