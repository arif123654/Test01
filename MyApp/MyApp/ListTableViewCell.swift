//
//  ListTableViewCell.swift
//  MyApp
//
//  Created by apple on 1/26/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var productImageView: UIImageView!
    
    
    @IBOutlet weak var productNameLabel: UILabel!
    
    @IBOutlet weak var productQualityLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
