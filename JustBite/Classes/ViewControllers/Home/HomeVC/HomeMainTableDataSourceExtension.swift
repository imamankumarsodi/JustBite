//
//  HomeMainTableDataSourceExtension.swift
//  JustBite
//
//  Created by Aman on 12/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension HomeVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
  
    
}

extension HomeVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        guard let cell = tblViewHome.dequeueReusableCell(withIdentifier: HomeMainTableViewCell.className, for: indexPath) as? HomeMainTableViewCell else {
            fatalError(ConstantTexts.unexpectedIndexPath)
        }
        if indexPath.row == 0{
            cell.lblTitle.text = "Top Rated Restaurants"
            cell.lblTitle.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
            
        }else{
            cell.lblTitle.font = AppFont.Semibold.size(AppFontName.SourceSansPro, size: 17)
            cell.lblTitle.text = "Near-by Restaurants"
        }
        
        cell.superVC = self
        cell.btnRestRef.tag = indexPath.row
        cell.btnRestRef.addTarget(self, action: #selector(self.tapSectionBtn(sender:)), for: UIControl.Event.touchUpInside)
        return cell
    }
    
}
