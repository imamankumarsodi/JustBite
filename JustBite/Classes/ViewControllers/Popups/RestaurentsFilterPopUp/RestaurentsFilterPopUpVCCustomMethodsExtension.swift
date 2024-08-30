//
//  RestaurentsFilterPopUpVCCustomMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 12/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension RestaurentsFilterPopUpVC{
    //TODO: Initial Setup
    internal func initialStup(){
        
        GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: self.viewMain, radius: 5)
        viewLine.backgroundColor = AppColor.placeHolderColor
        viewHeader.backgroundColor = AppColor.themeColor
        
        lblHeader.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
        
        lblPriceTitle.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        lblPriceTitle.textColor = AppColor.textColor
        
        lblPriceValue.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        lblPriceValue.textColor = AppColor.themeColor
        
        lblRating.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        lblRating.textColor = AppColor.textColor
        
        btnCusineRef.titleLabel?.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
        btnCusineRef.titleLabel?.textColor = AppColor.textColor
        btnCusineRef.setTitle("Cuisines", for: .normal)
        
        self.btnCancelRef.titleLabel?.textColor = AppColor.whiteColor
        self.btnDoneRef.titleLabel?.textColor = AppColor.whiteColor
        GlobalCustomMethods.shared.setupSubmitBtn(btnRef:self.btnCancelRef, title: "Cancel")
        GlobalCustomMethods.shared.setupSubmitBtn(btnRef:self.btnDoneRef, title: "Apply")
        
        sliderRef.minimumTrackTintColor = AppColor.themeColor
        sliderRef.maximumTrackTintColor = AppColor.placeHolderColor
        
    }
}
