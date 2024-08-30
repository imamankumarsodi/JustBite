//
//  RestaurentDetailsVC.swift
//  JustBite
//
//  Created by Aman on 13/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class RestaurentDetailsVC: BaseViewController {

    
    //MARK: - Outlets
    @IBOutlet weak var lblDetails: UILabel!
    @IBOutlet weak var viewLike: UIView!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var heightConstraints: NSLayoutConstraint!
    @IBOutlet weak var tblCart: UITableView!
    @IBOutlet weak var collectionViewHeader: UICollectionView!
    @IBOutlet weak var btnConfirmRef: UIButton!
    @IBOutlet weak var reviewsRef: UILabel!
    
    
    //MARK: - Variables
    internal var previousOffset: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.initialSetup()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationSetup()
    }
    
    @objc
    func tapFunction(sender:UITapGestureRecognizer) {
        super.moveToNextViewC(name: "Remaining", withIdentifier: RatingAndReviewsVC.className)
    }
    
    
    @objc func customizeTapped(){
        super.presentToNextViewC(name: "PopUps", withIdentifier: SubMenuListingVC.className)
    }
    
    @IBAction func btnInfoTapped(_ sender: Any) {
        
       let vc = AppStoryboard.pops.instantiateViewController(withIdentifier: RestaurentInfoVC.className) as! RestaurentInfoVC
        vc.viewC = self
        self.navigationController?.present(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func btnFilterTapped(_ sender: UIButton) {
        super.presentToNextViewC(name: "PopUps", withIdentifier: MenuItemsVC.className)
    }
    
    
    @IBAction func btnFilterTapped1(_ sender: UIButton) {
        super.presentToNextViewC(name: "PopUps", withIdentifier:RestaurentFilterPopVC.className)
    }
    
    
    @IBAction func btnAddToCartTapped(_ sender: UIButton) {
        
        super.moveToNextViewC(name: "Home", withIdentifier: MyCartVC.className)
        
    }
    
    
}
