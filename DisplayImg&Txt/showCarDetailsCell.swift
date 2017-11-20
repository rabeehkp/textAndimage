//
//  showCarDetailsCell.swift
//  DisplayImg&Txt
//
//  Created by Rabeeh KP on 20/11/17.
//  Copyright © 2017 Rabeeh KP. All rights reserved.
//

import UIKit

class showCarDetailsCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    //MARK: -Outlets
    @IBOutlet weak var carLabel: UILabel!
    @IBOutlet weak var showImage: UIImageView!
    

}
