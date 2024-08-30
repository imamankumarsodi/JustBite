//
//  TopUpCustomMethodExtension.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension TopUpOffersVC{
    
    //TODO: Initial Setup
    
    internal func initialSetup(){
        updateUI()
    }
    
    //TODO: Update UI
    
    fileprivate func updateUI(){
        hideKeyboardWhenTappedAround()
        registerNib()
        
    }
    
    //TODO: Navigation setup
    
    internal func navigationSetup(){
        preferredStatusBarStyle
        super.hideNavigationBar(false)
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: TopUpOffersVC.className)
        super.setupNavigationBarTitle("Top-up offers", leftBarButtonsType: [.back], rightBarButtonsType: [])
        GlobalCustomMethods.shared.setupSubmitBtn(btnRef:self.btnLoginRef, title: "Proceed to Chekout")

    }
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblAddOns.register(nib: TopUpOfferTableViewCell.className)
    }
    
}
