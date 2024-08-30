//
//  CreditStatementCustomMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension CreditStatementVC{
    //TODO: Initial Setup
    
    internal func initialSetup(){
       
        self.lblHeader.attributedText = GlobalCustomMethods.shared.attributedString(title: "Available Credit", subTitle: "AED 200", delemit: " ", sizeTitle: 20, sizeSubtitle: 20, titleColor: AppColor.textColor, SubtitleColor: AppColor.whiteColor)
        
        lblDetails.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 20)
        lblDetails.textColor = AppColor.textColor
        lblDetails.text = "Credit History"
        
        self.registerNib()
        navigationSetUP()
    }
    
    
    //TODO: Naigation Setup
    internal func navigationSetUP(){
        preferredStatusBarStyle
        super.transparentNavigation()
        super.setupNavigationBarTitle("Credit Statement", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: CreditStatementVC.className)
        //   super.hideNavigationBar(true)
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblViewDrawer.register(nib: CreditStatementsTableViewCell.className)
    }
    
}
