//
//  ForgotPasswordVC.swift
//  JustBite
//
//  Created by Aman on 06/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit
import TPKeyboardAvoiding

class ForgotPasswordVC: BaseViewController {
    
    //MARK: - IBOutlets

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var tblForgotPassword: TPKeyboardAvoidingTableView!
    
    
    //MARK: - Varibles for class
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    internal var forgetModel: LoginModeling?
    internal var dataStore = [DataStoreStruct]()
    
    
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
    
    
    
    //MARK: - Actions, Tap gestures
    //TODO: Submit Tapped
    
    @IBAction func btnSubmitTapped(_ sender: UIButton) {
        super.moveToNextViewCViaRoot(name:"Auth",withIdentifier: LoginVC.className)
    }
    
    
}
