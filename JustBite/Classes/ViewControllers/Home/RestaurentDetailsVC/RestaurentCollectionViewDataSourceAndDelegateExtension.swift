//
//  RestaurentCollectionViewDataSourceAndDelegateExtension.swift
//  JustBite
//
//  Created by Aman on 14/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

extension RestaurentDetailsVC:UICollectionViewDelegate{
    
}

extension RestaurentDetailsVC:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionViewHeader.dequeueReusableCell(withReuseIdentifier: CartCollectionViewCellAndXib.className, for: indexPath) as? CartCollectionViewCellAndXib else{
            fatalError(ConstantTexts.unexpectedIndexPath)
        }
        if indexPath.row == 0{
            cell.lblTitle.textColor = AppColor.themeColor
            cell.viewBottom.backgroundColor = AppColor.themeColor
        }else{
            cell.lblTitle.textColor = AppColor.placeHolderColor
            cell.viewBottom.backgroundColor = AppColor.placeHolderColor
        }
        
        return cell
    }
    
    
}

extension RestaurentDetailsVC:UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
            return CGSize(width: (UIScreen.main.bounds.size.width/4), height:self.collectionViewHeader.frame.height)

    }
    
    
}
