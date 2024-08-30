//
//  RestaurentInfoCustomMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 14/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension RestaurentInfoVC{
    //TODO: Initial Setup
    internal func initialStup(){
        topConstraint.constant = MAIN_SCREEN_HEIGHT/4
        GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: self.viewMain, radius: 5)
        lblHeader.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
        lblHeader.textColor = AppColor.whiteColor
        lblHeader.text = "Restaurant Info"
        lblReview.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        lblReview.textColor = AppColor.textColor
        lblReview.text = "Reviews"
        self.lblDetails.attributedText = GlobalCustomMethods.shared.attributedStringPopUP(title: "Description\n", subTitle: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n\n", subTitle2: "Working Hours", delemit: "\n", sizeTitle: 15, sizeSubtitle: 13, titleColor: AppColor.textColor, SubtitleColor: AppColor.placeHolderColor)
       
        btnViewAllRef.setAttributedTitle(GlobalCustomMethods.shared.attributedStringForUnderLine(title: "View All", sizeTitle: 15, titleColor: AppColor.themeColor), for: .normal)
        
        btnShiftRef.titleLabel?.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 16)
        btnViewAllRef.titleLabel?.textColor = AppColor.placeHolderColor
        btnShiftRef.setTitle("08:00AM - 09:30PM(Today)", for: .normal)
        
        registerNib()
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblAddOns.register(nib: RestaurentInfoTableViewCell.className)
    }
    
    
    //TODO: Method didScroll
    
    internal func didScrollScrollView(offset: CGFloat){
        let diff = previousOffset - offset
        previousOffset = offset
        
        var newHeight = topConstraint.constant + diff
        print(newHeight)
        
       // let kBarHeight:CGFloat = GlobalCustomMethods.shared.getKbarHeight()
        
        if newHeight < 0{
            newHeight = 0
        } else if newHeight > MAIN_SCREEN_HEIGHT/4 { // or whatever
            newHeight = MAIN_SCREEN_HEIGHT/4
        }
            //For show hide image profile
        else if newHeight > 0{
            
            
        }
        topConstraint.constant = newHeight
    }
}
