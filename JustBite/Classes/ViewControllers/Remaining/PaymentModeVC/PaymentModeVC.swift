//
//  PaymentModeVC.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class PaymentModeVC: BaseViewController {
    
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var btnCODRef: UIButton!
    @IBOutlet weak var btnCreditOrDebitRef: UIButton!
    
    @IBOutlet weak var lblMyPayment: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var btnAddCreditCard: UIButton!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var btnConfirmRef: UIButton!
    //MARK: - Variables
    
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
    @IBAction func btnCreditCardTapped(_ sender: UIButton) {
         super.presentToNextViewC(name: "PopUps", withIdentifier:AddCardVC.className)
        
    }
    
    
}
