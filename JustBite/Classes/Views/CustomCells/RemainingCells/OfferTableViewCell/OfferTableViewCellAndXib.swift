//
//  OfferTableViewCellAndXib.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class OfferTableViewCellAndXib: SBaseTableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var viewMain: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        lblTitle.attributedText = GlobalCustomMethods.shared.attributedStringOffer(title: "Park Inn by Radisson", subTitle: "Get 30% off on all orders", subTitle2: "This offer is valid from 12/04/2019 till 18/04/2019", delemit: "\n", sizeTitle: 17, sizeSubtitle2: 14, sizeSubtitle: 15, titleColor: AppColor.textColor, SubtitleColor: AppColor.subtitleColor, SubtitleColor2: AppColor.placeHolderColor)
        GlobalCustomMethods.shared.provideShadow(btnRef: viewMain)
        GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: viewMain, radius: 5)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}
