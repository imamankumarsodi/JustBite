//
//  AddCartCustomMethods.swift
//  JustBite
//
//  Created by Aman on 22/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

//MARK: - Extension Custom methods

extension AddCardVC{
    
    //TODO: Initial Setup
    
    internal func initialSetup(){
        
        updateUI()
    }
    
    //TODO: UpdateUI method
    
    fileprivate func updateUI(){
        
        hideKeyboardWhenTappedAround()
        lblHeader.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 20)
        lblHeader.textColor = AppColor.textColor
        lblHeader.text = "Enter Card Details"
        
        GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: self.mainView, radius: 5)
        GlobalCustomMethods.shared.setupSubmitBtn(btnRef:self.btnSubmit, title: "SAVE CARD")

        
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
            loginModel = AddCardVM()
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
        self.tblLogin.register(nib: LoginCell.className)
    }
}
