//
//  RatingAndReviewCustomMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 15/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension RatingAndReviewsVC{
    
    //TODO: Initial Setup
    
    internal func initialSetup(){
        update()
    }
    
    //TODO: Update UI
    
    fileprivate func update(){
        hideKeyboardWhenTappedAround()
        lblHeader.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
        lblHeader.textColor = AppColor.themeColor
        lblHeader.text = "4.5 Ratings"
        
        lblDetails.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
        lblDetails.textColor = AppColor.textColor
        lblDetails.text = "Restaurents Latest Reviews(200+)"
        registerNib()
       
    }
    
    //TODO: Navigation setup
    
    internal func navigationSetup(){
        super.setupNavigationBarTitle("Rating & Reviews", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.hideNavigationBar(false)
        super.transparentNavigation()
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: RatingAndReviewsVC.className)
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblAddOns.register(nib: RestaurentInfoTableViewCell.className)
    }
    
}
