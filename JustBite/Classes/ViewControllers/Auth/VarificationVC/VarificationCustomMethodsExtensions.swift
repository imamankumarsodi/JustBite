//
//  VarificationCustomMethodsExtensions.swift
//  JustBite
//
//  Created by Aman on 07/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension VarificationVC{
    
    //TODO: Initial Setup
    
    internal func initialSetup(){
        updateUI()
    }
    
    //TODO: Update UI
    
    fileprivate func updateUI(){
        
        lblTitle.attributedText = GlobalCustomMethods.shared.attributedStringForgotPassword(title: "Enter OTP", subTitle: "We have send you access code\nVia SMS for mobile number verification.", delemit: "\n", sizeTitle: 24, sizeSubtitle: 18, titleColor: AppColor.textColor, SubtitleColor: AppColor.textColor)
        
        lblFooter.attributedText = GlobalCustomMethods.shared.attributedStringOTP(title: "Didn't Recieve the OTP?", subTitle: "Resend OTP", delemit: "\n", sizeTitle: 18, sizeSubtitle: 18, titleColor: AppColor.textColor, SubtitleColor: AppColor.themeColor)
        GlobalCustomMethods.shared.setupSubmitBtn(btnRef: self.btnSubmit, title: String())
        hideKeyboardWhenTappedAround()
        

        otpView.otpFieldsCount = 6
        otpView.otpFieldDefaultBorderColor = AppColor.placeHolderColor
        otpView.otpFieldEnteredBorderColor = AppColor.placeHolderColor
        otpView.otpFieldErrorBorderColor = AppColor.placeHolderColor
        otpView.otpFieldBorderWidth = 1
        otpView.delegate = self
        otpView.shouldAllowIntermediateEditing = false
        
        // Create the UI
        otpView.initalizeUI()
    }
    
    //TODO: Navigation setup
    
    internal func navigationSetup(){
        preferredStatusBarStyle
        super.hideNavigationBar(false)
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: VarificationVC.className)
        super.setupNavigationBarTitle("Verification", leftBarButtonsType: [.back], rightBarButtonsType: [])
    }
    
}
