//
//  DrawerControllerVC.swift
//  JustBite
//
//  Created by Aman on 14/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import UIKit

class DrawerControllerVC: BaseViewController {

    
    //MARK: - IBOutlets
    @IBOutlet weak var tblViewDrawer: UITableView!
    @IBOutlet weak var viewHeader: UIView!
    @IBOutlet weak var lblHeader: UILabel!
    
    
    
    //MARK: - Varibles for class
  
    internal var leftModel: LeftModeling?
    internal var dataStore = [LeftMenuStruct]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        // Do any additional setup after loading the view.
    }
    

    //TODO: View will appear
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationSetUP()
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        navigationSetUP()
    }
    
    
    @objc func tapSectionBtn(sender:UIButton){
        super.moveToNextViewCViaRoot(name:"Auth",withIdentifier: LoginVC.className)
        
    }

}
