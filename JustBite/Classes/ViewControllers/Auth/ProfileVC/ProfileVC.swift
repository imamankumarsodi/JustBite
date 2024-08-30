//
//  ProfileVC.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit
import TPKeyboardAvoiding

class ProfileVC: BaseViewController {
    
    //MARK: - IBOutlets
   
    @IBOutlet weak var tblProfile: TPKeyboardAvoidingTableView!
    
    @IBOutlet weak var lblName: UILabel!
    
   
    
    
    
    //MARK: - Varibles for class
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

    
    
    
    internal var profileModel: ProfileModeling?
    internal var dataStore1 = [DataStoreStruct]()
    internal var dataStore2 = [DataStoreStruct]()
    
    //MARK: - View life cycle methods
    //TODO: View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        initialSetup()
    }
    
    //TODO: View Will appear
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationSetUpView()
        
    }
    
    
    @objc func tapSectionBtn(sender:UIButton){
        super.moveToNextViewC(name: "Auth", withIdentifier: EditProfileVC.className)
        
    }
}
