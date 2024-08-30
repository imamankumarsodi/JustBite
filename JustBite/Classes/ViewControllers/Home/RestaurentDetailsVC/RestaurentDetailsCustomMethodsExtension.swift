//
//  RestaurentDetailsCustomMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 13/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension RestaurentDetailsVC{
    //TODO: Inititial Setup
    internal func initialSetup(){
        self.lblDetails.attributedText = GlobalCustomMethods.shared.updateRestaurentDetails(title: "Park Inn by Radisson", cusineArray: ["North Indian","Italian","Chinese"],  delemit: "\n")
        
         self.lblAddress.attributedText = GlobalCustomMethods.shared.updateRestaurentAddressLabel(address: "Utsav Ground Plot No 6A, I.P.Extension, Patparganj, Delhi, 110092")
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapFunction))
        reviewsRef.isUserInteractionEnabled = true
        reviewsRef.addGestureRecognizer(tap)
        GlobalCustomMethods.shared.provideCornarRadius(btnRef: self.viewLike)
        
        self.btnConfirmRef.backgroundColor = AppColor.themeColor
        self.btnConfirmRef.setTitle("Add To Cart", for: .normal)
        self.btnConfirmRef.titleLabel?.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        
        registerNib()
        registerNibCollection()
    }
    
    //TODO: Setup Navigation
    internal func navigationSetup(){
        
        preferredStatusBarStyle
        
        super.setupNavigationBarTitle("", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.addColorToNavigationBarAndSafeArea(color: UIColor.clear, className: RestaurentDetailsVC.className)
        super.transparentNavigation()
        super.hideNavigationBar(false)
        registerNib()
    }
    
    
    //TODO: Method didScroll
    
   internal func didScrollScrollView(offset: CGFloat){
        let diff = previousOffset - offset
        previousOffset = offset
    
        var newHeight = heightConstraints.constant + diff
        print(newHeight)
    
    let kBarHeight:CGFloat = GlobalCustomMethods.shared.getKbarHeight()
    
        if newHeight < kBarHeight {
            newHeight = kBarHeight
        } else if newHeight > 227 { // or whatever
            newHeight = 227
        }
            //For show hide image profile
        else if newHeight > kBarHeight{
           
           
        }
        heightConstraints.constant = newHeight
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblCart.register(nib: CartTableViewCellAndXib.className)
    }
    
    //TODO: Register Nib method
    fileprivate func registerNibCollection(){
        self.collectionViewHeader.register(nib: CartCollectionViewCellAndXib.className)
    }
}

