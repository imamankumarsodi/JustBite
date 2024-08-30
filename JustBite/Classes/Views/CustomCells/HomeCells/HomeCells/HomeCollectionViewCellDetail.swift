//
//  HomeCollectionViewCellDetail.swift
//  JustBite
//
//  Created by Aman on 09/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class HomeCollectionViewCellDetail: UICollectionViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var heartView: UIView!
    @IBOutlet weak var lblDetails: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
       initialSetup()
        // Initialization code
    }
    
    
    
    //TODO: InitialSetup
    internal func initialSetup(){
        GlobalCustomMethods.shared.provideCornarRadius(btnRef: heartView)
        GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: mainView, radius: 5)
        GlobalCustomMethods.shared.provideShadow(btnRef: mainView)
        lblDetails.attributedText = GlobalCustomMethods.shared.updateHomeTableViewCellLabel(title: "Park Inn by Radisson", cusineArray: ["North Indian","Italian","Chinese"], address: "Utsav Ground Plot No 6A, I.P.Extension, Patparganj, Delhi, 110092", delemit: "\n")
    }

}


