//
//  Students.swift
//  SQLite
//
//  Created by 박성준 on 2021/07/27.
//

import Foundation

class Students{
    var id : Int
    var name : String?
    var dept : String?
    var phone : String?
    
    init(id : Int, name : String?, dept : String?, phone : String?){
        self.id = id
        self.name = name
        self.dept = dept
        self.phone = phone
    }
}
