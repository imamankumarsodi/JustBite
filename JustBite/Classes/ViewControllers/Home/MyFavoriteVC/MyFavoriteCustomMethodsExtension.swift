//
//  MyFavoriteCustomMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 19/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit


//MARK: - Extension Custom methods
extension MyFavroiteVC{
    
    //TODO: Initial setup
    internal func initialSetup(){
        updateUI()
    }
    
    //TODO: Update UI
    fileprivate func updateUI(){
        super.hideNavigationBar(false)
        
        registerNib()
        hideKeyboardWhenTappedAround()
        
        
    }
    
    
    //TODO: Navigation setup
    
    internal func navigationSetUpView() {
        preferredStatusBarStyle
        super.setupNavigationBarTitle("My Favorites", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: MyFavroiteVC.className)
        super.transparentNavigation()
        super.hideNavigationBar(false)
        
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblView.register(nib: HomeTableViewCell.className)
    }
    
}
