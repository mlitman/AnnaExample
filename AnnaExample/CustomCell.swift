//
//  CustomCell.swift
//  AnnaExample
//
//  Created by Michael Litman on 12/1/15.
//  Copyright © 2015 Michael Litman. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell
{

    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLAbel: UILabel!
    @IBOutlet weak var cLabel: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
