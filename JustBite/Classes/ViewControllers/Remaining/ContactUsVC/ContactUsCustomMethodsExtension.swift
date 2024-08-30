//
//  ContactUsCustomMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
extension ContactUsVC{
    
    //TODO: Initial Setup
    
    internal func initialSetup(){
        update()
    }
    
    //TODO: Update UI
    
    fileprivate func update(){
        hideKeyboardWhenTappedAround()
        recheckModel()
      
    }
    
    //TODO: Navigation setup
    
    internal func navigationSetup(){
        super.setupNavigationBarTitle("Contact Us", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.hideNavigationBar(false)
        super.transparentNavigation()
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: ContactUsVC.className)
    }
    
    
    //TODO: Recheck method
    fileprivate func recheckModel(){
        if contactData == nil{
            contactData = ContactUsVM()
        }
        setUpDataSource()
    }
    
    //TODO: Data Source method
    fileprivate func setUpDataSource() {
        if let arrDataSource = self.contactData?.prepareDataSource() {
            self.dataStore = arrDataSource
        }
        self.registerNib()
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblContact.register(nib: ContactUsTableViewCell.className)
    }
    
    
}
