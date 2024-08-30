//
//  MyOrderOnGoingCustomMethod.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension MyOrderOngoingVC{
    internal func initialSetup(){
        
        updateUI()
        
     //   tblViewHome.tableHeaderView = header
    }
    
    //TODO: Update UI
    fileprivate func updateUI(){
        hideKeyboardWhenTappedAround()
        tblViewHome.backgroundColor = AppColor.whiteColor
        GlobalCustomMethods.shared.provideCornarRadius(btnRef: viewBtn)
        GlobalCustomMethods.shared.provideCustomBorder(btnRef: viewBtn)
        
        
        
        btnOnGoingRef.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 16)
        btnOnGoingRef.setTitleColor(AppColor.whiteColor, for: .normal)
        btnOnGoingRef.backgroundColor = AppColor.themeColor
        btnOnGoingRef.setTitle("Ongoing", for: .normal)
        
        btnPreviousRef.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 16)
        btnPreviousRef.setTitleColor(AppColor.textColor, for: .normal)
        btnPreviousRef.backgroundColor = AppColor.whiteColor
        btnPreviousRef.setTitle("Previous", for: .normal)
        
        self.registerNib()
       
    }
    
    //TODO: Navigation setup
    
    internal func navigationSetUpView() {
        super.transparentNavigation()
        super.hideNavigationBar(false)
        super.setupNavigationBarTitle("My Orders", leftBarButtonsType: [.menu], rightBarButtonsType: [.cart])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: MyOrderOngoingVC.className)
        
        
    }
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblViewHome.register(nib: InnerTableViewCell.className)
    }
    
}

