//
//  CustomCell.swift
//  TeamLift3
//
//  Created by Meredith Van De Velde on 11/11/19.
//  Copyright © 2019 Meredith Van De Velde. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func customInit(text: String){
        self.label.text = text
        self.label.textColor = UIColor.black
    }
    
}
