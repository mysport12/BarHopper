//
//  FavoriteCell.swift
//  BarHopper
//
//  Created by Craig Martin on 7/6/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit
import Parse

class FavoriteCell: UITableViewCell {

    @IBOutlet weak var businessPicture: UIImageView!
    @IBOutlet weak var businessNameLabel: UILabel!
    @IBOutlet weak var businessDistanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
