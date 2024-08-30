//
//  HomeVC.swift
//  JustBite
//
//  Created by Aman on 09/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class HomeVC: BaseViewController {

    //MARK: - IBOutlets
    @IBOutlet weak var tblViewHome: UITableView!
    
    @IBOutlet weak var viewHeader: UIView!
    @IBOutlet weak var txtFieldHeader: UITextField!
    @IBOutlet weak var heightHeader: NSLayoutConstraint!
    @IBOutlet weak var lblAvailableOffers: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
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
            super.menuTapped()
        }else{
            super.cartTapped()
        }
    }
    
    
    @objc func tapSectionBtn(sender:UIButton){
       super.moveToNextViewC(name: "Home", withIdentifier: TopNearByMyFavoriteVC.className)
    }

}
