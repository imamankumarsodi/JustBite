//
//  ProfileCustomMethodExtension.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension ProfileVC{
    internal func initialSetup(){
        
        updateUI()
    }
    
    //TODO: Update UI
    fileprivate func updateUI(){
        hideKeyboardWhenTappedAround()
        
        tblProfile.backgroundColor = AppColor.whiteColor
        
        lblName.font = AppFont.Bold.size(AppFontName.SourceSansPro, size: 20)
        lblName.textColor = AppColor.textColor
        lblName.text = "Jack Shukla"
        
     
        
        
        
       recheckModel()
        
    }
    
    //TODO: Navigation setup
    
    internal func navigationSetUpView() {
        super.transparentNavigation()
        super.hideNavigationBar(false)
        super.setupNavigationBarTitle("My Profile", leftBarButtonsType: [.menu], rightBarButtonsType: [.cart])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: ProfileVC.className)
    }
    
    
    
    //TODO: Recheck method
    fileprivate func recheckModel(){
        if profileModel == nil{
            profileModel = ProfileVM()
        }
        setUpDataSource()
    }
    
    //TODO: Data Source method
    fileprivate func setUpDataSource() {
        if let arrDataSource = self.profileModel?.prepareDataSource() {
            self.dataStore1 = arrDataSource.0
            self.dataStore2 = arrDataSource.1
        }
        self.registerNib()
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblProfile.register(nib: LoginCell.className)
    }
    
   
}
