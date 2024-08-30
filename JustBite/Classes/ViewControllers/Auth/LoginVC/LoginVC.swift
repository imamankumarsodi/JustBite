//
//  LoginVC.swift
//  JustBite
//
//  Created by Aman on 04/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit
import TPKeyboardAvoiding

class LoginVC: BaseViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var lblHeading: UILabel!
    @IBOutlet weak var tblViewLogin: TPKeyboardAvoidingTableView!
    @IBOutlet weak var lblFooter: UILabel!
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
        navigationSetUP()
    }
    
    
    
    //MARK: - Actions, Tap gestures
    //TODO: Login Tapped
    
    @IBAction func btnLoginTapped(_ sender: UIButton) {
       print("app delegate m root bana kar tab bar bhej dena")
        moveToHomeVC()
    }
    
    //TODO: Forgot password Tapped
    
    @IBAction func btnForgotPasswordTapped(_ sender: UIButton) {
    super.moveToNextViewC(name: "Auth", withIdentifier: ForgotPasswordVC.className)
        
        
    }
    
    
    @objc
    func tapFunction(sender:UITapGestureRecognizer) {
        super.moveToNextViewC(name: "Auth", withIdentifier: SignupVC.className)
    }
    
}
