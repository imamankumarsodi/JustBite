//
//  MyCartCustomMethodsExtensions.swift
//  JustBite
//
//  Created by Aman on 15/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit
import MaterialComponents.MaterialTextFields


extension MyCartVC{
    
    //TODO: Initial setup
    internal func initialSetup(){
        updateUI()
    }
    
    //TODO: Update UI
    fileprivate func updateUI(){
        registerNib()
        hideKeyboardWhenTappedAround()
        
        viewHeader.backgroundColor = AppColor.themeColor
        
        self.lblHeader.textColor = AppColor.whiteColor
        self.lblHeader.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
        self.lblHeader.text = "My Cart"
        
        
        self.btnSubmit.backgroundColor = AppColor.themeColor
        self.btnSubmit.setTitle("Confirm", for: .normal)
        self.btnSubmit.titleLabel?.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        
        footer.lblTotalPriceHeading.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        footer.lblTotalPriceHeading.textColor = AppColor.placeHolderColor
        footer.lblTotalPriceHeading.text = "Total Price"
        
        footer.lblDiscountHeading.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        footer.lblDiscountHeading.textColor = AppColor.placeHolderColor
        footer.lblDiscountHeading.text = "Discount"
        
        footer.lblPaidAmount.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
        footer.lblPaidAmount.textColor = AppColor.textColor
        footer.lblPaidAmount.text = "Total amount to be paid"
        
        footer.lblTotalAmountValue.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        footer.lblTotalAmountValue.textColor = AppColor.placeHolderColor
        footer.lblTotalAmountValue.text = "AED 20.00"
        
        footer.lblDiscountValue.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        footer.lblDiscountValue.textColor = AppColor.placeHolderColor
        footer.lblDiscountValue.text = "AED 5.00"
        
        footer.lblPaidValue.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
        footer.lblPaidValue.textColor = AppColor.textColor
        footer.lblPaidValue.text = "AED 15.00"
        
        footer.txtView.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 14)
        footer.txtView.textColor = AppColor.placeHolderColor
        footer.txtView.text = "Add extra note..."
        
        GlobalCustomMethods.shared.provideCustomBorder(btnRef: footer.viewText)
        GlobalCustomMethods.shared.provideCustomBorder(btnRef: footer.viewText)
        GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: footer.viewText, radius: 10)
        
        footer.viewText.backgroundColor = AppColor.whiteColor
        
        footer.textFieldFloating?.delegate = MyCartFooterView.self as? UITextFieldDelegate
        footer.textFieldControllerFloating = MDCTextInputControllerUnderline(textInput: footer.textFieldFloating)
        footer.textFieldControllerFloating?.floatingPlaceholderScale = 1.10
        
        footer.textFieldFloating?.textColor = AppColor.textColor
        footer.textFieldControllerFloating?.activeColor = AppColor.placeHolderColor
        footer.textFieldControllerFloating?.normalColor = AppColor.placeHolderColor
        footer.textFieldFloating?.placeholderLabel.textColor = AppColor.themeColor
        footer.textFieldControllerFloating?.inlinePlaceholderColor = AppColor.placeHolderColor
        footer.textFieldControllerFloating?.floatingPlaceholderNormalColor = AppColor.themeColor
        footer.textFieldControllerFloating?.floatingPlaceholderActiveColor = AppColor.themeColor
        footer.textFieldFloating?.placeholder = ConstantTexts.address
        
        footer.btnEditRef.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 14)
        footer.btnEditRef.setTitleColor(AppColor.themeColor, for: .normal)
        footer.btnEditRef.setTitle("(Edit)", for: .normal)
        
        
        footer.btnEditRef.addTarget(self, action: #selector(self.tapSectionBtn(sender:)), for: UIControl.Event.touchUpInside)
        
        GlobalCustomMethods.shared.provideCornarRadius(btnRef: footer.btnEditRef)
       
        
        footer.textFieldFloating?.underline?.isHidden = false
        footer.textFieldFloating?.clearButton.isHidden = false
        
        
        tblView.tableFooterView = footer
    }
    
    
    //TODO: Navigation setup
    
    internal func navigationSetUpView() {
        preferredStatusBarStyle
        super.setupNavigationBarTitle("", leftBarButtonsType: [], rightBarButtonsType: [])
        super.addColorToNavigationBarAndSafeArea(color: AppColor.themeColor, className: MyCartVC.className)
        super.transparentNavigation()
        super.hideNavigationBar(true)
        
        
    }

    
    
    //TODO: Register Nib method
    fileprivate func registerNib(){
        self.tblView.register(nib: CartTableViewCellAndXib.className)
    }
    
}
