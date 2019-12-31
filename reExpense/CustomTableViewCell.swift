//
//  CustomTableViewCell.swift
//  reExpense
//
//  Created by Tanvir on 12/30/19.
//  Copyright © 2019 tanvir841. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var DescribeLbl: UILabel!
    @IBOutlet weak var AmountLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
