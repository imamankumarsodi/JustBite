//
//  MyCartVC.swift
//  JustBite
//
//  Created by Aman on 15/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialTextFields


class MyCartVC: BaseViewController {
    
    
    //MARK: - IBOutlets
    @IBOutlet weak var viewHeader: UIView!
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var heightHeader: NSLayoutConstraint!
    @IBOutlet weak var btnAddItem: UIButton!
    
    //MARK:- All Propetise
    var textFieldControllerFloating: MDCTextInputControllerUnderline?
    let footer:MyCartFooterView = Bundle.main.loadNibNamed("MyCartFooterView", owner: self, options: nil)!.last! as! MyCartFooterView
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        
        if MAIN_SCREEN_HEIGHT == 812 || MAIN_SCREEN_HEIGHT == 896{
            heightHeader.constant = 44
        }else{
            heightHeader.constant = 44
            
        }
        
    }
    
    
    @IBAction func btnHeaderTapped(_ sender: UIButton) {
        
        if sender.tag == 1{
            super.backButtonTapped()
        }else{
            super.moveToNextViewC(name: "Home", withIdentifier: RestaurentDetailsVC.className)
         // super.moveToNextViewCViaRoot(name: "TabBar", withIdentifier: "TabBarViewC")
        }
    }
    
    @IBAction func btnConfirmRef(_ sender: UIButton) {
        
        super.moveToNextViewC(name: "Remaining", withIdentifier: PaymentModeVC.className)
    }
    
    
    @objc func tapSectionBtn(sender:UIButton){
        super.presentToNextViewC(name: "PopUps", withIdentifier:EditAddressPopUPVC.className)
        
    }
    
    
}
