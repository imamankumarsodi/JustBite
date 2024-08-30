//
//  SettingTableView.swift
//  JustBite
//
//  Created by Aman on 18/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension SettingsVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
}

extension SettingsVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == self.selectedSection {
            return dataStore.count
        }else {
            return 0
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: LoginCell.className, for: indexPath) as? LoginCell else {
            fatalError(ConstantTexts.unexpectedIndexPath)
        }
        cell.textFieldFloating?.delegate = self
        cell.configureCellWith(info:dataStore[indexPath.row])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
            let header:SettingsHeader = Bundle.main.loadNibNamed(SettingsHeader.className, owner: self, options: nil)!.first! as! SettingsHeader
        
        header.btnTap.tag = section
        header.btnTap.addTarget(self, action: #selector(self.tapSectionBtn(sender:)), for: UIControl.Event.touchUpInside)
        
        
        if section == 0{
            header.img.image = #imageLiteral(resourceName: "drop_dwn")
            header.btnTap.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 16)
            header.btnTap.backgroundColor = UIColor.clear
            header.btnTap.setTitleColor(AppColor.themeColor, for: .normal)
            header.btnTap.setTitle("Select Language", for: .normal)
            
           
            
            return header
            
        }else if section == 1{
            header.img.image = #imageLiteral(resourceName: "drop_dwn")
            header.btnTap.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 16)
            header.btnTap.backgroundColor = UIColor.clear
            header.btnTap.setTitleColor(AppColor.themeColor, for: .normal)
            header.btnTap.setTitle("Change Password", for: .normal)
          
            
            return header
        }else{
            header.img.image = #imageLiteral(resourceName: "logout")
            header.btnTap.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 16)
            header.btnTap.backgroundColor = UIColor.clear
            header.btnTap.setTitleColor(AppColor.subtitleColor, for: .normal)
            header.btnTap.setTitle("Logout", for: .normal)
            
           
            
            return header
        }
        
       
            
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
       
            if section == self.selectedSection {
                return 60
            }
            return 60

        
        
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == self.selectedSection
        {
            let footer:SettingFooter = Bundle.main.loadNibNamed(SettingFooter.className, owner: self, options: nil)!.last! as! SettingFooter
           GlobalCustomMethods.shared.setupSubmitBtn(btnRef:footer.btnSubmitTapped, title: "Save")
            
            return footer
        }else {
            return UIView(frame: CGRect.zero)
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == self.selectedSection {
            return 150
        }else {
            return 1
        }
    }
    
}


// MARK: - Text Field Delegates

extension SettingsVC: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let currentIndexPath = HHelper.getIndexPathFor(view: textField, tableView: self.tblSetting) else {
            return true
        }
        
        let lastRowIndex = self.tblSetting.numberOfRows(inSection: 0) - 1
        if currentIndexPath.row != lastRowIndex{
            var nextIndexPath = IndexPath(row: currentIndexPath.row + 1, section: 0)
            while nextIndexPath.row <= lastRowIndex{
                if let nextCell = self.tblSetting.cellForRow(at: nextIndexPath) as? LoginCell{
                    self.tblSetting.scrollToRow(at: nextIndexPath, at: .middle, animated: true)
                    nextCell.textFieldFloating?.returnKeyType = .next
                    if nextIndexPath.row == lastRowIndex{
                        nextCell.textFieldFloating?.returnKeyType = .done
                    }
                    nextCell.textFieldFloating?.becomeFirstResponder()
                    break
                    
                }
            }
            
            textField.resignFirstResponder()
            
        }else{
            textField.resignFirstResponder()
        }
        
        return true
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        let str = textField.text as String?
        if let index = HHelper.getIndexPathFor(view: textField, tableView: self.tblSetting){
            if str?.count == 0{
                self.dataStore[index.row].value = String()
            }else{
                self.dataStore[index.row].value = str
            }
        }
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let _ = HHelper.getIndexPathFor(view: textField, tableView: self.tblSetting) {
            if textField.text!.count > 50 && string != "" {
                return false
            }
        }
        return true
    }
    
}
