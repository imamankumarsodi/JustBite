//
//  VarificationVC.swift
//  JustBite
//
//  Created by Aman on 07/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class VarificationVC: BaseViewController {

    
    //MARK: - IBOutlets
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var otpView: VPMOTPView!
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var lblFooter: UILabel!
    
    //MARK: - Variables
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    var enteredOtp: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initialSetup()
    }
    
    //TODO: View Will appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
         navigationSetup()
        
    }
    
    
    @IBAction func btnSubmitTapped(_ sender: UIButton) {
        moveToHomeVC()
    }
    
    
}
