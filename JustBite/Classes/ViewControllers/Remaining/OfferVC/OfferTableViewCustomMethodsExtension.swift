//
//  OfferTableViewCustomMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension OfferVC{
    
    //TODO: Initial Setup
    
    internal func initialSetup(){
        update()
    }
    
    //TODO: Update UI
    
    fileprivate func update(){
        hideKeyboardWhenTappedAround()
        registerNib()
        
    }
    
    //TODO: Navigation setup
    
    internal func navigationSetup(){
        super.setupNavigationBarTitle("Offers", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.hideNavigationBar(false)
        super.transparentNavigation()
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: OfferVC.className)
    }
    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblOrders.register(nib: OfferTableViewCellAndXib.className)
    }
    
}
