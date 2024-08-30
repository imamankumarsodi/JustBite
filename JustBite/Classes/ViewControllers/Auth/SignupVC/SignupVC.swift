//
//  SignupVC.swift
//  JustBite
//
//  Created by Aman on 06/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit
import TPKeyboardAvoiding

class SignupVC: BaseViewController {
    
    //MARK: - IBOutlets
    
   
    @IBOutlet weak var tblViewLogin: TPKeyboardAvoidingTableView!
    
    @IBOutlet weak var btnLoginRef: UIButton!
    
    
    
    //MARK: - Varibles for class
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    
    
    internal var loginModel: LoginModeling?
    internal var dataStore = [DataStoreStruct]()
    
    
    //MARK: - View life cycle methods
    //TODO: View did load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initialSetup()
    }
    
    
    //TODO: View will appear
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationSetUpView()
    }
    
    
    
    //MARK: - Actions, Tap gestures
    //TODO: Login Tapped
    
    @IBAction func btnLoginTapped(_ sender: UIButton) {
       
      super.moveToNextViewC(name: "Auth", withIdentifier: VarificationVC.className)
    }
    
   
}
