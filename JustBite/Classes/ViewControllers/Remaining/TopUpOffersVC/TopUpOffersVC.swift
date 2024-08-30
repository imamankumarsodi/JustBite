//
//  TopUpOffersVC.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//
import UIKit

class TopUpOffersVC: BaseViewController {
    
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var btnLoginRef: UIButton!
    @IBOutlet weak var tblAddOns: UITableView!
    //MARK: - Variables
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
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
   
}
