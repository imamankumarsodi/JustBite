//
//  ChooseYorTasteTableViewCell.swift
//  JustBite
//
//  Created by Aman on 14/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class ChooseYorTasteTableViewCell: SBaseTableViewCell {

    @IBOutlet weak var imgSelected: UIImageView!
    @IBOutlet weak var lblDetails: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configure()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    internal func configure(){
        self.lblDetails.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 15)
        self.lblPrice.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 15)
        self.lblDetails.textColor = AppColor.placeHolderColor
        self.lblPrice.textColor = AppColor.placeHolderColor
        self.lblDetails.text = "Cheeky Chicken"
        self.lblPrice.text = "AED 7.00"
        self.imageView?.image = #imageLiteral(resourceName: "un_salected_rb")
        
    }
    
}
