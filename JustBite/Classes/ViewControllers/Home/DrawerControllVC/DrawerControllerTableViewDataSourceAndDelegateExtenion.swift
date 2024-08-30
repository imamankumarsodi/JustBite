//
//  DrawerControllerTableViewDataSourceAndDelegateExtenion.swift
//  JustBite
//
//  Created by Aman on 14/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
//
//  LoginTableView+TextField.swift
//  JustBite
//
//  Created by Aman on 05/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension DrawerControllerVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        if tableView == self.tblViewDrawer{
            if indexPath.row == 0{
                
                kAppDelegate.drawerController?.setDrawerState(.closed, animated: true)
                
            }else if indexPath.row == 1{
                super.moveToNextViewC(name: "Home", withIdentifier: MyFavroiteVC.className)
            }else if indexPath.row == 2{
                super.moveToNextViewC(name: "Remaining", withIdentifier: OfferVC.className)
            }else if indexPath.row == 3{
                super.moveToNextViewC(name: "Remaining", withIdentifier: JustBiteCreditVC.className)
            }else if indexPath.row == 4{
                super.moveToNextViewC(name: "Remaining", withIdentifier: PaymentsVC.className)
            }else if indexPath.row == 5{
                super.moveToNextViewC(name: "Auth", withIdentifier: SettingsVC.className)
            }else if indexPath.row == 6{
                super.moveToNextViewC(name: "Remaining", withIdentifier: HelpAboutUsFaQT_CVC.className)
            }else if indexPath.row == 7{
                super.moveToNextViewC(name: "Remaining", withIdentifier: HelpAboutUsFaQT_CVC.className)
            }else if indexPath.row == 8{
                super.moveToNextViewC(name: "Remaining", withIdentifier: ContactUsVC.className)
            }else if indexPath.row == 9{
                super.moveToNextViewC(name: "Remaining", withIdentifier: HelpAboutUsFaQT_CVC.className)
            }else{
                super.moveToNextViewC(name: "Remaining", withIdentifier: HelpAboutUsFaQT_CVC.className)
            }
            kAppDelegate.drawerController?.setDrawerState(.closed, animated: true)
        }else{
            print("Bhag yaha se")
        }
        
      
        
        
    }
    
}

extension DrawerControllerVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataStore.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: DrawerTableViewCellAndXib.className, for: indexPath) as? DrawerTableViewCellAndXib else {
            fatalError(ConstantTexts.unexpectedIndexPath)
        }
        GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: cell.lblMoney, radius: 5)
        cell.configureCellWith(info:dataStore[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
       
            let footer:DrawerFooter = Bundle.main.loadNibNamed("DrawerFooter", owner: self, options: nil)!.last! as! DrawerFooter
            
        
            footer.btnLoginRef.titleLabel?.font = AppFont.Regular.size(AppFontName.SourceSansPro, size: 17)
            footer.btnLoginRef.setTitleColor(AppColor.whiteColor, for: .normal)
            footer.btnLoginRef.setTitle("Login", for: .normal)
            footer.btnLoginRef.backgroundColor = AppColor.themeColor
            
            footer.btnLoginRef.addTarget(self, action: #selector(self.tapSectionBtn(sender:)), for: UIControl.Event.touchUpInside)
            
            GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: footer.btnLoginRef, radius: 5)
        
            footer.btnLoginRef.isHidden = true
            
            return footer

        
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        
            return 80
        
        
    }
    
    
}

