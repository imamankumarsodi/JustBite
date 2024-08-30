//
//  HomeTableViewCellCustomMethodsExtension.swift
//  JustBite
//
//  Created by Aman on 12/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension HomeTableViewCell{
    
    //TODO: InitialSetup
    internal func initialSetup(){
        GlobalCustomMethods.shared.provideCornarRadius(btnRef: heartView)
        GlobalCustomMethods.shared.provideCustomCornarRadius(btnRef: mainView, radius: 5)
        GlobalCustomMethods.shared.provideShadow(btnRef: mainView)
        lblDetails.attributedText = GlobalCustomMethods.shared.updateHomeTableViewCellLabel(title: "Park Inn by Radisson", cusineArray: ["North Indian","Italian","Chinese"], address: "Utsav Ground Plot No 6A, I.P.Extension, Patparganj, Delhi, 110092", delemit: "\n")
    }
}
