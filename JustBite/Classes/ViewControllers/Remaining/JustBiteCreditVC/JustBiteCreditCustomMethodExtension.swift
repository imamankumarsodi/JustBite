//
//  JustBiteCreditCustomMethodExtension.swift
//  JustBite
//
//  Created by Aman on 19/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

//MARK: - Extension Custom methods
extension JustBiteCreditVC{
    
    //TODO: Initial setup
    internal func initialSetup(){
        updateUI()
    }
    
    //TODO: Update UI
    fileprivate func updateUI(){
        super.hideNavigationBar(false)
        hideKeyboardWhenTappedAround()
        
        btnHeaderRef.titleLabel?.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 30)
        btnHeaderRef.backgroundColor = UIColor.clear
        btnHeaderRef.setTitleColor(AppColor.textColor, for: .normal)
        btnHeaderRef.setTitle("  AED 200.00", for: .normal)
        
        lblTitle.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 15)
        lblTitle.textColor = AppColor.placeHolderColor
        lblTitle.text = "Available Credits"
        lblTitle.backgroundColor = UIColor.clear
        
        btnViewAllRef.backgroundColor = UIColor.clear
        btnViewAllRef.setAttributedTitle(GlobalCustomMethods.shared.attributedStringForUnderLine(title: "View Statement", sizeTitle: 15, titleColor: AppColor.themeColor), for: .normal)
        
        
        GlobalCustomMethods.shared.setupSubmitBtn(btnRef:self.btnLoginRef, title: "Top Up Credit")
        
        
    }
    
    
    //TODO: Navigation setup
    
    internal func navigationSetUpView() {
        preferredStatusBarStyle
        super.setupNavigationBarTitle("Payment Mode", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: JustBiteCreditVC.className)
        super.transparentNavigation()
        super.hideNavigationBar(false)
        
    }
    
    
    
    
}
