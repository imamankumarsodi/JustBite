//
//  SettingsCustomsMethodExtension.swift
//  JustBite
//
//  Created by Aman on 08/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension SettingsVC{
    //TODO: Initial Setup
    internal func initialSetup(){
        updateUI()
    }
    
    //TODO: Update UI
    fileprivate func updateUI(){
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: SettingsVC.className)
        self.lblNotification.text = "Notifications"
        self.lblNotification.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 18)
        self.lblNotification.textColor = AppColor.textColor
        hideKeyboardWhenTappedAround()
        recheckModel()
        navigationSetup()
    }
    
    //TODO: Navigation setup
    fileprivate func navigationSetup(){
        super.transparentNavigation()
        super.hideNavigationBar(false)
        super.setupNavigationBarTitle("Settings", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: SettingsVC.className)
    }
    
    
    //TODO: Recheck method
    fileprivate func recheckModel(){
        if settingModel == nil{
            settingModel = SettingVM()
        }
        setUpDataSource()
    }
    
    //TODO: Data Source method
    fileprivate func setUpDataSource() {
        if let arrDataSource = self.settingModel?.prepareDataSource() {
            self.dataStore = arrDataSource
        }
        self.registerNib()
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblSetting.register(nib: LoginCell.className)
    }
    
}
