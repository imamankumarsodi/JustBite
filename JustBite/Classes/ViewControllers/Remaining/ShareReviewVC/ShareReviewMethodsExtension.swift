//
//  ShareReviewMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension ShareReviewVC{
    
    //TODO: Initial Setup
    
    internal func initialSetup(){
        update()
    }
    
    //TODO: Update UI
    
    fileprivate func update(){
        hideKeyboardWhenTappedAround()
       
        lblDetails.attributedText = GlobalCustomMethods.shared.attributedStringForgotPassword(title: "Share Ratings & Reviews", subTitle: "Share Ratings as per your experience with\nthe Restaurant food.", delemit: "\n", sizeTitle: 17, sizeSubtitle: 17, titleColor: AppColor.textColor, SubtitleColor: AppColor.subtitleColor)
        
        txtView.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 14)
        txtView.textColor = AppColor.placeHolderColor
        txtView.text = "Write here..."
        
        GlobalCustomMethods.shared.provideCustomBorder(btnRef: viewText)
        GlobalCustomMethods.shared.provideCustomBorder(btnRef: viewText)
        GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: viewText, radius: 10)
        viewText.backgroundColor = AppColor.whiteColor
        
         GlobalCustomMethods.shared.setupSubmitBtn(btnRef:self.btnLoginRef, title: "Submit")
        
        
    }
    
    //TODO: Navigation setup
    
    internal func navigationSetup(){
        super.setupNavigationBarTitle("Share Reviews", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.hideNavigationBar(false)
        super.transparentNavigation()
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: ShareReviewVC.className)
    }
    
    
    
    
}
