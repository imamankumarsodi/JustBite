//
//  SettingsVC.swift
//  JustBite
//
//  Created by Aman on 08/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class SettingsVC:BaseViewController {

    //MARK: - IBOutlets
    
    @IBOutlet weak var lblNotification: UILabel!
    @IBOutlet weak var tblSetting: UITableView!
    
    internal var settingModel: LoginModeling?
    internal var dataStore = [DataStoreStruct]()
    
    var selectedSection = -1
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initialSetup()
        
    }
    
    @objc func tapSectionBtn(sender:UIButton){
        if sender.tag == 0{
        print("Select language Tapped")
        }else if sender.tag == 1{
            if sender.tag == self.selectedSection {
                self.selectedSection = -1
            }else {
                self.selectedSection = sender.tag
            }
            self.tblSetting.reloadData()
        }else{
            
            _ = SweetAlert().showAlert(APP_NAME, subTitle: ConstantTexts.WantToLogout, style: AlertStyle.warning, buttonTitle:"Cancel", buttonColor: AppColor.themeColor , otherButtonTitle:  "OK",  otherButtonColor: AppColor.stepperColor) { (isOtherButton) -> Void in
                if isOtherButton == true {
                    print("Cancel Button  Pressed", terminator: "")
                }
                else
                {
                    super.moveToNextViewCViaRoot(name:"Auth",withIdentifier: LoginVC.className)
                }
                
            }
            
            
           
        }
       
    }
    
}


