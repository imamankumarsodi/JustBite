//
//  CartCollectionViewCellAndXib.swift
//  JustBite
//
//  Created by Aman on 14/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class CartCollectionViewCellAndXib: UICollectionViewCell {

    
    //MARK: - IBOutlets
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var viewBottom: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        configureCollection()
    }
    
    
    fileprivate func configureCollection(){ //Baad main model ka data lana hai
        lblTitle.text = "Dummy Text"
        lblTitle.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 15)
        lblTitle.textColor = AppColor.placeHolderColor
        
        viewBottom.backgroundColor = AppColor.placeHolderColor
    }

}
