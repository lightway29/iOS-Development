//
//  CustomCell.swift
//  Project-Custom-Cell
//
//  Created by Lightway on 10/31/18.
//  Copyright © 2018 Lightway. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet var photo: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var phone: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
