//
//  RestaurentInfoVC.swift
//  JustBite
//
//  Created by Aman on 14/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class RestaurentInfoVC: BaseViewController {
    
    
    //MARK: - IBOutlets
    @IBOutlet weak var viewMain: UIView!
    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var lblDetails: UILabel!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var tblAddOns: UITableView!
    @IBOutlet weak var lblReview: UILabel!
    @IBOutlet weak var btnShiftRef: UIButton!
    @IBOutlet weak var btnViewAllRef: UIButton!
    
    //MARK: - Variables
    internal var previousOffset: CGFloat = 0
    var viewC = UIViewController()
    
    //MARK: - View Life Cycle Methods
    //TODO: View didLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        initialStup()
        // Do any additional setup after loading the view.
    }
    
    //TODO: View Will Appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        super.hideStatusBar(true)
    }
    
    //MARK: - Actions,Gesture
    //TODO: Save Actions
    
    @IBAction func btnSaveTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func btnViewAllTapped(_ sender: UIButton) {
        self.dismiss(animated: true) {
            let vc = AppStoryboard.remain.instantiateViewController(withIdentifier: RatingAndReviewsVC.className)
            self.viewC.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
