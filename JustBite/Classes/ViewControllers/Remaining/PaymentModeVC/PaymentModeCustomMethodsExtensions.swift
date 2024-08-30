//
//  PaymentModeCustomMethodsExtensions.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

//MARK: - Extension Custom methods
extension PaymentModeVC{
    
    //TODO: Initial setup
    internal func initialSetup(){
        updateUI()
    }
    
    //TODO: Update UI
    fileprivate func updateUI(){
        super.hideNavigationBar(false)
        hideKeyboardWhenTappedAround()
        
        btnCODRef.titleLabel?.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        btnCODRef.setTitleColor(AppColor.subtitleColor, for: .normal)
        btnCODRef.setTitle("  Cash on Delivery", for: .normal)
        
        btnCreditOrDebitRef.titleLabel?.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        btnCreditOrDebitRef.setTitleColor(AppColor.subtitleColor, for: .normal)
        btnCreditOrDebitRef.setTitle("  Credit Card/Debit Card", for: .normal)
        
        lblMyPayment.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
        lblMyPayment.textColor = AppColor.textColor
        lblMyPayment.text = "My Payments"
        
        
        btnAddCreditCard.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
        btnAddCreditCard.setTitleColor(AppColor.subtitleColor, for: .normal)
        btnAddCreditCard.setTitle("  Add Credit Card", for: .normal)
        
        lblTitle.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        lblTitle.textColor = AppColor.textColor
        lblTitle.text = "Other Payment Methods"
        
        self.btnConfirmRef.backgroundColor = AppColor.themeColor
        self.btnConfirmRef.setTitle("Done", for: .normal)
        self.btnConfirmRef.titleLabel?.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        
        registerNibCol()
        
    }
    
    
    //TODO: Navigation setup
    
    internal func navigationSetUpView() {
        preferredStatusBarStyle
        super.setupNavigationBarTitle("Payment Mode", leftBarButtonsType: [.back], rightBarButtonsType: [])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: PaymentModeVC.className)
        super.transparentNavigation()
        super.hideNavigationBar(false)
        
    }
    
    //TODO: Register Nib method
    fileprivate func registerNibCol(){
        self.collectionView.registerMultiple(nibs: [PaymentModeCollectionViewCell.className,PaymentModeCollectionViewCell.className])
    }
 
    
}
