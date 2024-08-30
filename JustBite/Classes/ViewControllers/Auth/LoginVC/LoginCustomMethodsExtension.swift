//
//  LoginCustomMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 04/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

//MARK: - Extension Custom methods

extension LoginVC{
    
    //TODO: Initial Setup
    
    internal func initialSetup(){
      
      updateUI()
    }
    
    //TODO: UpdateUI method
    
    fileprivate func updateUI(){
        
        hideKeyboardWhenTappedAround()
        self.lblHeading.attributedText = GlobalCustomMethods.shared.attributedString(title: "Proceed with your", subTitle: "Login",delemit:"\n", sizeTitle: 18.0, sizeSubtitle: 24.0, titleColor: AppColor.textColor, SubtitleColor: AppColor.textColor)
        self.lblFooter.attributedText = GlobalCustomMethods.shared.attributedStringFooter(title: "Don't have an account?", subTitle: "SIGN UP",delemit:" ", sizeTitle: 18.0, sizeSubtitle: 18.0, titleColor: #colorLiteral(red: 0.4600000083, green: 0.4600000083, blue: 0.4600000083, alpha: 1), SubtitleColor: AppColor.themeColor)
        GlobalCustomMethods.shared.setupSubmitBtn(btnRef:self.btnLoginRef, title: "LOGIN")
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapFunction))
        lblFooter.isUserInteractionEnabled = true
        lblFooter.addGestureRecognizer(tap)
        
        recheckModel()
    }
    
    
     //TODO: Naigation Setup
       internal func navigationSetUP(){
        preferredStatusBarStyle
        super.transparentNavigation()
        super.addColorToNavigationBarAndSafeArea(color: AppColor.whiteColor, className: LoginVC.className)
        super.hideNavigationBar(true)
    }
    
    
    //TODO: Recheck method
    fileprivate func recheckModel(){
        if loginModel == nil{
            loginModel = LoginVM()
        }
        setUpDataSource()
    }
    
    //TODO: Data Source method
    fileprivate func setUpDataSource() {
        if let arrDataSource = self.loginModel?.prepareDataSource() {
            self.dataStore = arrDataSource
        }
        self.registerNib()
    }

    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblViewLogin.registerMultiple(nibs: [LoginCell.className,phoneWithcounrtyAndCellTableViewCell.className])
        
    }
}
