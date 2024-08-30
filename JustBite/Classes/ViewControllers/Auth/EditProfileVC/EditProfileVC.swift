//
//  EditProfileVC.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit
import TPKeyboardAvoiding

class EditProfileVC: BaseViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var tblProfile: TPKeyboardAvoidingTableView!
    
    
    
    
    
    //MARK: - Varibles for class
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    
  //  let footer:AddressFooterForMyProfile = Bundle.main.loadNibNamed("AddressFooterForMyProfile", owner: self, options: nil)!.last! as! AddressFooterForMyProfile
    
    
    internal var profileModel: editProfileModeling?
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
        super.goBackToIndex(1, animated: true)
        
    }
    
}
