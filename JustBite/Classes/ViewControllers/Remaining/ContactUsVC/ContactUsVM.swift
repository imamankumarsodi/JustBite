//
//  ContactUsVM.swift
//  JustBite
//
//  Created by Aman on 16/05/19.
//  Copyright © 2019 Mobulous. All rights reserved.
//

import Foundation
import UIKit

// MARK: - Login Protocol

protocol ContactUsModeling {
    func prepareDataSource() -> [ContactUsStruct]

}


// MARK: - Class LoginVM

class ContactUsVM:ContactUsModeling{
    
    func prepareDataSource() -> [ContactUsStruct] {
        var dataSource = [ContactUsStruct]()
        dataSource.append(ContactUsStruct(title: "H-146/147 Sec-63 Noida, H Block,, Sector 63, Noida, Uttar Pradesh\n201307", image: #imageLiteral(resourceName: "map_location_ic")))
        dataSource.append(ContactUsStruct(title: "+91 0000000000\n+91 0000000000", image: #imageLiteral(resourceName: "phone_in_circle_logo")))
        dataSource.append(ContactUsStruct(title: "admin@justbite.com", image: #imageLiteral(resourceName: "mail_in_circle")))
        return dataSource
    }
}
