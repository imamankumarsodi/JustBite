//
//  MyOrderOngoingVC.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class MyOrderOngoingVC: BaseViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var tblViewHome: UITableView!
    @IBOutlet weak var viewBtn: UIView!
    @IBOutlet weak var btnOnGoingRef: UIButton!
    @IBOutlet weak var btnPreviousRef: UIButton!
    
    
    
    // let header:InnerTableViewHeader = Bundle.main.loadNibNamed(InnerTableViewHeader.className, owner: self, options: nil)!.first! as! InnerTableViewHeader
    
    
    
    var isSelected = [0,0,0,0,0]
    var selectedSection = -1
    
    var btnTag = 1
   
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
    
    
    @IBAction func btnChoiceTapped(_ sender: UIButton) {
        
        self.btnTag = sender.tag
        self.selectedSection = -1
        
        if self.btnTag == 1{
            btnOnGoingRef.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 16)
            btnOnGoingRef.setTitleColor(AppColor.whiteColor, for: .normal)
            btnOnGoingRef.backgroundColor = AppColor.themeColor
            btnOnGoingRef.setTitle("Ongoing", for: .normal)
            
            btnPreviousRef.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 16)
            btnPreviousRef.setTitleColor(AppColor.textColor, for: .normal)
            btnPreviousRef.backgroundColor = AppColor.whiteColor
            btnPreviousRef.setTitle("Previous", for: .normal)
        }else{
            btnPreviousRef.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 16)
            btnPreviousRef.setTitleColor(AppColor.whiteColor, for: .normal)
            btnPreviousRef.backgroundColor = AppColor.themeColor
            btnPreviousRef.setTitle("Previous", for: .normal)
            
            btnOnGoingRef.titleLabel?.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 16)
            btnOnGoingRef.setTitleColor(AppColor.textColor, for: .normal)
            btnOnGoingRef.backgroundColor = AppColor.whiteColor
            btnOnGoingRef.setTitle("Ongoing", for: .normal)
            
        }
        
        
        self.tblViewHome.reloadData()
        
    }
    
    
    
    @objc func tapSectionBtn(sender:UIButton){
        if sender.tag == self.selectedSection {
            self.selectedSection = -1
        }else {
            
            self.selectedSection = sender.tag
        }
        self.tblViewHome.reloadData()
    }
    
    @objc func tapShareReviews(sender:UIButton){
        super.moveToNextViewC(name: "Remaining", withIdentifier: ShareReviewVC.className)
       
    }
    
}
