//
//  RestaurentInfoTableViewCell.swift
//  JustBite
//
//  Created by Aman on 14/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class RestaurentInfoTableViewCell: SBaseTableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubTitle: UILabel!
   
    
    
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
        self.lblTitle.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 15)
        self.lblTitle.text = "Lallan Tiwari"
        self.lblTitle.textColor = AppColor.themeColor
        self.lblSubTitle.attributedText = GlobalCustomMethods.shared.attributedString(title: "3 weeks ago\n", subTitle: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.", delemit: "\n", sizeTitle: 12, sizeSubtitle: 14, titleColor: AppColor.placeHolderColor, SubtitleColor: AppColor.placeHolderColor)

    
    }
    
}
