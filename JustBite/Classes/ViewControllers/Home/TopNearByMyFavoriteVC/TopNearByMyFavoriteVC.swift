//
//  TopNearByMyFavoriteVC.swift
//  JustBite
//
//  Created by Aman on 10/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class TopNearByMyFavoriteVC:BaseViewController {

    
    //MARK: - IBOutlets
    
    @IBOutlet weak var tblView: UITableView!
    
    
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
    
    

}
