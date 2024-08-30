//
//  HelpAboutUsFaQT&CCustomMethods.swift
//  JustBite
//
//  Created by Aman on 11/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension HelpAboutUsFaQT_CVC{
    
    //TODO: Initial Setup
    
    internal func initialSetup(){
      update()
    }
    
    //TODO: Update UI
    
    fileprivate func update(){
        hideKeyboardWhenTappedAround()
        lblContent.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 18)
        lblContent.textColor = AppColor.textColor
        lblContent.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
    }
    
    //TODO: Navigation setup
    
    internal func navigationSetup(){
        super.setupNavigationBarTitle("Title", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.hideNavigationBar(false)
        super.transparentNavigation()
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: HelpAboutUsFaQT_CVC.className)
    }
    
}
