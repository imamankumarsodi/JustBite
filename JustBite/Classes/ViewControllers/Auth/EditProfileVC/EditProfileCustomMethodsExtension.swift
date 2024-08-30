//
//  EditProfileCustomMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension EditProfileVC{
    internal func initialSetup(){
        
        updateUI()
    }
    
    //TODO: Update UI
    fileprivate func updateUI(){
        hideKeyboardWhenTappedAround()
        self.tblProfile.backgroundColor = AppColor.whiteColor
       
        
        recheckModel()
        
    }
    
    //TODO: Navigation setup
    
    internal func navigationSetUpView() {
        super.transparentNavigation()
        super.hideNavigationBar(false)
        super.setupNavigationBarTitle("My Profile", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: EditProfileVC.className)
    }
    
    
    
    //TODO: Recheck method
    fileprivate func recheckModel(){
        if profileModel == nil{
            profileModel = EditProfileVM()
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
        
        self.tblProfile.registerMultiple(nibs: [LoginCell.className,SignUpTableViewCell.className])
        
    }
    
    
}
