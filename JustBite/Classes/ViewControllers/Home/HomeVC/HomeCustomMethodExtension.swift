//
//  HomeCustomMethodExtension.swift
//  JustBite
//
//  Created by Aman on 09/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension HomeVC{
    internal func initialSetup(){
        
        updateUI()
    }
    
    //TODO: Update UI
    fileprivate func updateUI(){
        hideKeyboardWhenTappedAround()
        viewHeader.backgroundColor = AppColor.themeColor
        lblAvailableOffers.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
        lblAvailableOffers.textColor = AppColor.textColor
        lblAvailableOffers.text = "Available Offers"
        
        txtFieldHeader.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 14)
        txtFieldHeader.textColor = AppColor.whiteColor
        txtFieldHeader.text = "H-146/147 Sec-63 Noida, H Block,, Sector 63, Noida, Uttar Pradesh 201307"
        self.registerNib()
        self.registerNibCol()

    }
    
    //TODO: Navigation setup
    
    internal func navigationSetUpView() {
        super.transparentNavigation()
        super.hideNavigationBar(true)
        super.setupNavigationBarTitle("Home", leftBarButtonsType: [], rightBarButtonsType: [])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: HomeVC.className)
        
        
    }
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblViewHome.register(nib: HomeMainTableViewCell.className)
    }
    
    //TODO: Register Nib method
    fileprivate func registerNibCol(){
        self.collectionView.registerMultiple(nibs: [HomeCollectionViewCellAvailableOffer.className,HomeCollectionViewCellDetail.className])
    }
    
    
    
}
