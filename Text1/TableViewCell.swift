//
//  TableViewCell.swift
//  Text1
//
//  Created by Seth Du on 15/8/15.
//  Copyright © 2015年 Seth Du. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var photoimage: UIImageView!
    @IBOutlet weak var photoname: UILabel!
    @IBOutlet weak var photorating: ratingcontrol!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
