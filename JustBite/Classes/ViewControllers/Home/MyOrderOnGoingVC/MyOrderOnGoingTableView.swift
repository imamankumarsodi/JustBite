//
//  MyOrderOnGoingTableView.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit


extension MyOrderOngoingVC:UITableViewDelegate{
    
}

extension MyOrderOngoingVC:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return isSelected.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == self.selectedSection {
            return 2
        }else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tblViewHome.dequeueReusableCell(withIdentifier: InnerTableViewCell.className, for: indexPath) as? InnerTableViewCell else{
            fatalError(ConstantTexts.unexpectedIndexPath)
        }
        
        cell.lblDetails.attributedText = GlobalCustomMethods.shared.attributedString(title: "Noodles", subTitle: "AED 9.00", delemit: "\n", sizeTitle: 15, sizeSubtitle: 16, titleColor: AppColor.subtitleColor, SubtitleColor: AppColor.textColor)
        
        cell.btnCustomizeRef.titleLabel?.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 13)
        cell.btnCustomizeRef.setTitleColor(AppColor.subtitleColor, for: .normal)
        cell.btnCustomizeRef.backgroundColor = AppColor.whiteColor
        cell.btnCustomizeRef.setTitle("1 X AED 11.0", for: .normal)
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        
        
        if self.btnTag == 1{
        
        
       let header:MyOrderOnGoingHeaderView = Bundle.main.loadNibNamed(MyOrderOnGoingHeaderView.className, owner: self, options: nil)!.first! as! MyOrderOnGoingHeaderView
        
        
            header.lblTitle.attributedText = GlobalCustomMethods.shared.attributedStringOffer(title: "Radisson", subTitle: "Order Id : 122222", subTitle2: "12/03/2019 19:00PM", delemit: "\n", sizeTitle: 16, sizeSubtitle2: 15, sizeSubtitle: 14, titleColor: AppColor.textColor, SubtitleColor: AppColor.subtitleColor, SubtitleColor2: AppColor.placeHolderColor)

        
        header.lblTime.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 14)
        header.lblTime.textColor = AppColor.themeColor
        header.lblTime.text = "04:30"
        
        header.btnCancelRef.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 16)
        header.btnCancelRef.setTitleColor(AppColor.whiteColor, for: .normal)
        header.btnCancelRef.backgroundColor = AppColor.themeColor
        header.btnCancelRef.setTitle("Cancel", for: .normal)
        GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: header.btnCancelRef, radius: 5)
        
        header.lblConfirmedStepper.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 10)
        header.lblConfirmedStepper.textColor = AppColor.whiteColor
        header.lblConfirmedStepper.backgroundColor = AppColor.placeHolderColor
        GlobalCustomMethods.shared.provideCornarRadius(btnRef: header.lblConfirmedStepper)
        header.lblConfirmedStepper.text = "1"
        
        header.lblInTheKitchenStep.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 10)
        header.lblInTheKitchenStep.textColor = AppColor.whiteColor
        header.lblInTheKitchenStep.backgroundColor = AppColor.placeHolderColor
        GlobalCustomMethods.shared.provideCornarRadius(btnRef: header.lblInTheKitchenStep)
        header.lblInTheKitchenStep.text = "2"
        
        header.lblOutForDeliverStepper.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 10)
        header.lblOutForDeliverStepper.textColor = AppColor.whiteColor
        header.lblOutForDeliverStepper.backgroundColor = AppColor.placeHolderColor
        GlobalCustomMethods.shared.provideCornarRadius(btnRef: header.lblOutForDeliverStepper)
        header.lblOutForDeliverStepper.text = "3"
        
        header.lblDeliveredStepper.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 10)
        header.lblDeliveredStepper.textColor = AppColor.whiteColor
        header.lblDeliveredStepper.backgroundColor = AppColor.placeHolderColor
        GlobalCustomMethods.shared.provideCornarRadius(btnRef: header.lblDeliveredStepper)
        header.lblDeliveredStepper.text = "4"
        
        
        header.lblConfirmedStatus.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 10)
        header.lblConfirmedStatus.textColor = AppColor.subtitleColor
        header.lblConfirmedStatus.text = "Confirmed"
        
        header.lblInTheKitchenStatus.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 10)
        header.lblInTheKitchenStatus.textColor = AppColor.subtitleColor
        header.lblInTheKitchenStatus.text = "In the Kitchen"
        
        header.lblOutForDeliveryStatus.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 10)
        header.lblOutForDeliveryStatus.textColor = AppColor.subtitleColor
        header.lblOutForDeliveryStatus.text = "Out For Delivery"
        
        header.lblDeliveredStatus.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 10)
        header.lblDeliveredStatus.textColor = AppColor.subtitleColor
        header.lblDeliveredStatus.text = "Delivered"
        
        header.viewCToK.backgroundColor = AppColor.subtitleColor
        header.viewIToO.backgroundColor = AppColor.subtitleColor
        header.viewOToD.backgroundColor = AppColor.subtitleColor
        
        
        header.btnTap.tag = section
        header.btnTap.addTarget(self, action: #selector(self.tapSectionBtn(sender:)), for: UIControl.Event.touchUpInside)
            
        header.clipsToBounds = true
        GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: header, radius: 10)
            
            return header
            
        }else{
            let header:PreviousOrderHeader = Bundle.main.loadNibNamed(PreviousOrderHeader.className, owner: self, options: nil)!.first! as! PreviousOrderHeader
            
            header.lblTitle.attributedText = GlobalCustomMethods.shared.attributedStringOffer(title: "Radisson", subTitle: "Order Id : 122222", subTitle2: "Delivered", delemit: "\n", sizeTitle: 16, sizeSubtitle2: 15, sizeSubtitle: 14, titleColor: AppColor.textColor, SubtitleColor: AppColor.subtitleColor, SubtitleColor2: AppColor.stepperColor)
            
            
            header.btnCancelRef.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 14)
            header.btnCancelRef.setTitleColor(AppColor.textColor, for: .normal)
            header.btnCancelRef.setTitle("  Rate Order", for: .normal)
            
            
            
            header.btnReorderRef.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 16)
            header.btnReorderRef.backgroundColor = AppColor.themeColor
            header.btnReorderRef.setTitleColor(AppColor.whiteColor, for: .normal)
            header.btnReorderRef.setTitle("  Reorder", for: .normal)
            
            
            
            header.btnTap.tag = section
            header.btnTap.addTarget(self, action: #selector(self.tapSectionBtn(sender:)), for: UIControl.Event.touchUpInside)
            
            header.btnCancelRef.tag = section
            header.btnCancelRef.addTarget(self, action: #selector(self.tapShareReviews(sender:)), for: UIControl.Event.touchUpInside)
            
            
            header.clipsToBounds = true
            GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: header, radius: 10)
           return header
        }
        
       
    }
    
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == self.selectedSection
        {
           let footer:InnerTableViewFooter = Bundle.main.loadNibNamed(InnerTableViewFooter.className, owner: self, options: nil)!.last! as! InnerTableViewFooter
        
            
            footer.lblTotolPrice.attributedText = GlobalCustomMethods.shared.attributedString(title: "Total Price :", subTitle: "AED 20.00", delemit: " ", sizeTitle: 17, sizeSubtitle: 17, titleColor: AppColor.subtitleColor, SubtitleColor: AppColor.textColor)
            
            footer.lblAddress.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 14)
            footer.lblAddress.textColor = AppColor.textColor
            footer.lblAddress.text = "Utsav Ground Plot No 6A, I.P.Extension, Patparganj, Delhi, 110092"
            
            footer.lblPaymentMode.attributedText = GlobalCustomMethods.shared.attributedStringOnGing(title: "Payment mode :", subTitle: "COD", delemit: " ", sizeTitle: 14, sizeSubtitle: 14, titleColor: AppColor.textColor, SubtitleColor: AppColor.subtitleColor)
            
            footer.lblDetails.attributedText = GlobalCustomMethods.shared.attributedStringOnGing(title: "Radisson Blu\n", subTitle: "Expected Delivery Time\n02:00 PM\n\nPhone Number\n800000000", delemit: "\n", sizeTitle: 14, sizeSubtitle: 14, titleColor: AppColor.textColor, SubtitleColor: AppColor.subtitleColor)
            
            
            footer.lblDeliveryPerson.attributedText = GlobalCustomMethods.shared.attributedStringOnGing(title: "Delivery Person", subTitle: "Daniel Tiwari", delemit: "\n", sizeTitle: 14, sizeSubtitle: 14, titleColor: AppColor.subtitleColor, SubtitleColor: AppColor.subtitleColor)
            
            
            return footer
        }else {
            return UIView(frame: CGRect.zero)
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        if self.btnTag == 1{
            if section == self.selectedSection {
                return 180
            }
            return 180
        }else{
            if section == self.selectedSection {
                return 160
            }
            return 160
        }
        
       
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == self.selectedSection {
            return 330
        }else {
            return 1
        }
    }
    
}
