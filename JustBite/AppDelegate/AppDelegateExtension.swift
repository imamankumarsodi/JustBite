//
//  AppDelegateExtension.swift
//  JustBite
//
//  Created by Aman on 14/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit
import KYDrawerController

extension AppDelegate{
    
    internal func openDrawer(){
        
        drawerController = KYDrawerController.init(drawerDirection: .left, drawerWidth: MAIN_SCREEN_WIDTH - 80)
        
        let homeVC = AppStoryboard.tabbarClass as! TabBarViewC
        let drawerVC = AppStoryboard.home.instantiateViewController(withIdentifier: DrawerControllerVC.className) as! DrawerControllerVC
        let navigationController = UINavigationController(rootViewController: drawerController!)
        self.drawerController!.mainViewController = homeVC
        self.drawerController!.drawerViewController = drawerVC
        self.window?.rootViewController = navigationController
        navigationController.isNavigationBarHidden = true
        self.window?.makeKeyAndVisible()
        drawerController?.setDrawerState(.opened, animated: true)
        
    }
    
}
