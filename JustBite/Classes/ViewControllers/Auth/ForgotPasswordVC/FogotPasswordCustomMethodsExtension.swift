//
//  FogotPasswordCustomMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 06/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension ForgotPasswordVC{
    
    //TODO: Initial Setup
    internal func initialSetup(){
        updateUI()

    }
    
    //TODO: Update UI
   fileprivate func updateUI(){
        lblTitle.attributedText = GlobalCustomMethods.shared.attributedStringForgotPassword(title: "Forgot Password?", subTitle: "We need your registered email id to send\npassword reset information.", delemit: "\n", sizeTitle: 24, sizeSubtitle: 18, titleColor: AppColor.textColor, SubtitleColor: AppColor.textColor)
        GlobalCustomMethods.shared.setupSubmitBtn(btnRef: self.btnSubmit, title: "Submit")
        hideKeyboardWhenTappedAround()
        recheckModel()
        
    }
    
    
    //TODO: Navigation setup
    
    internal func navigationSetUpView() {
        preferredStatusBarStyle
        super.setupNavigationBarTitle("Forgot Password", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.transparentNavigation()
        super.hideNavigationBar(false)
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: ForgotPasswordVC.className)
        
        
    }
    
    //TODO: Recheck method
    fileprivate func recheckModel(){
        if forgetModel == nil{
            forgetModel = ForgotPasswordModeling()
        }
        setUpDataSource()
    }
    
    //TODO: Data Source method
    fileprivate func setUpDataSource() {
        if let arrDataSource = self.forgetModel?.prepareDataSource() {
            self.dataStore = arrDataSource
        }
        self.registerNib()
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblForgotPassword.register(nib: LoginCell.className)
    }
    
}
