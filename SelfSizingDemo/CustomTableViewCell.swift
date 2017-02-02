//
//  CustomTableViewCell.swift
//  SelfSizingDemo
//
//  Created by Pavan Krishna on 4/9/16.
//  Copyright (c) 2016. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel:UILabel!
    @IBOutlet var addressLabel:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
