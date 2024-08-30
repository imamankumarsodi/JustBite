//
//  SignupCustomMethods.swift
//  JustBite
//
//  Created by Aman on 06/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension SignupVC{
    internal func initialSetup(){
        
        updateUI()
    }
    
    //TODO: Update UI
    fileprivate func updateUI(){
        hideKeyboardWhenTappedAround()
        GlobalCustomMethods.shared.setupSubmitBtn(btnRef:self.btnLoginRef, title: "SIGN UP")
        recheckModel()
      
        
    }
    
    //TODO: Navigation setup
    
    internal func navigationSetUpView() {
        super.transparentNavigation()
        super.hideNavigationBar(false)
        super.setupNavigationBarTitle("My Profile", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: SignupVC.className)
    }
    
    
    
    //TODO: Recheck method
    fileprivate func recheckModel(){
        if loginModel == nil{
            loginModel = SignUpVM()
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
        
        self.tblViewLogin.registerMultiple(nibs: [LoginCell.className,SignUpTableViewCell.className])
        
    }
    
    
}
