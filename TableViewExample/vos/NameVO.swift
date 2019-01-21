//
//  NameVO.swift
//  TableViewExample
//
//  Created by Sheilar June on 1/15/19.
//  Copyright © 2019 rooking. All rights reserved.
//

import Foundation

class NameVO {
    var name : String?
    var email : String?
    var phone : String?
    var image : String?
    
    
    init(strName : String, strEmail : String, strPhone : String,strImage : String) {
        name = strName
        email = strEmail
        phone = strPhone
        image = strImage
    }
}
