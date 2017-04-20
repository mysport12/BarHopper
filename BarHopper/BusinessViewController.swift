//
//  BusinessViewController.swift
//  BarHopper
//
//  Created by Craig Martin on 7/13/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit
import MapKit

class BusinessViewController: UIViewController {

    @IBOutlet weak var businessImage: UIImageView!
    @IBOutlet weak var businessName: UILabel!
    @IBOutlet weak var businessAddress: UILabel!
    @IBOutlet weak var businessMapLocation: MKMapView!
    @IBOutlet weak var hoursCell: UITableViewCell!
    @IBOutlet weak var hoursTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
