//
//  TopNearByMyFavoriteVCCustomMethodsExtensions.swift
//  JustBite
//
//  Created by Aman on 10/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit


//MARK: - Extension Custom methods
extension TopNearByMyFavoriteVC{
    
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
        super.setupNavigationBarTitle("Top Rated Restaurants", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: TopNearByMyFavoriteVC.className)
        super.transparentNavigation()
        super.hideNavigationBar(false)
       
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblView.register(nib: HomeTableViewCell.className)
    }
    
}
