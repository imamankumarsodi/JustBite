//
//  SearchCustomMethodsExtensios.swift
//  JustBite
//
//  Created by Aman on 12/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension SearchVC{
    
    //TODO: Initial setup
    internal func initialSetup(){
        updateUI()
    }
    
    //TODO: Update UI
    fileprivate func updateUI(){
    
        
        super.hideNavigationBar(false)
        self.viewSearch.backgroundColor = AppColor.whiteColor
        self.txtSearch.placeholder = "Search by Restaurants, Dishes, Cusines"
        
        lblHeader.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
        lblHeader.textColor = AppColor.textColor
        lblHeader.text = "Restaurants"
        
        GlobalCustomMethods.shared.provideCustomBorder(btnRef: self.viewSearch)
        GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: self.viewSearch, radius: self.viewSearch.frame.size.height/2)
        
        registerNib()
        hideKeyboardWhenTappedAround()
        
        
    }
    
    
    //TODO: Navigation setup
    
    internal func navigationSetUpView() {
        preferredStatusBarStyle
        super.setupNavigationBarTitle("Search", leftBarButtonsType: [.menu], rightBarButtonsType: [.cart])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: SearchVC.className)
        super.transparentNavigation()
        super.hideNavigationBar(false)
    
        
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblView.register(nib: HomeTableViewCell.className)
    }
    
}
