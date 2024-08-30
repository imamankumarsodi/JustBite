//
//  DrawerCustomMethodExtension.swift
//  JustBite
//
//  Created by Aman on 14/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension DrawerControllerVC{
    //TODO: Initial Setup
    
    internal func initialSetup(){
        viewHeader.backgroundColor = AppColor.themeColor
        self.lblHeader.textColor = AppColor.whiteColor
        self.lblHeader.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 20)
        self.lblHeader.text = "Jack Shukla"
        self.tblViewDrawer.backgroundColor = AppColor.whiteColor
        recheckModel()
      
    }
    
    
    //TODO: Naigation Setup
    internal func navigationSetUP(){
        preferredStatusBarStyle
        super.setupNavigationBarTitle("", leftBarButtonsType: [], rightBarButtonsType: [])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: DrawerControllerVC.className)
    }
    
    //TODO: Recheck method
    fileprivate func recheckModel(){
        if leftModel == nil{
            leftModel = DrawerControllerVM()
        }
        setUpDataSource()
    }
    
    
    //TODO: Data Source method
    fileprivate func setUpDataSource() {
        if let arrDataSource = self.leftModel?.prepareDataSource() {
            self.dataStore = arrDataSource
        }
        self.registerNib()
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblViewDrawer.register(nib: DrawerTableViewCellAndXib.className)
    }
    
}
