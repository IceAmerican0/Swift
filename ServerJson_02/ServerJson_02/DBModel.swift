//
//  DBModel.swift
//  ServerJson_02
//
//  Created by 박성준 on 2021/07/27.
//

import Foundation


class DBModel : NSObject{
    var scode : String?
    var sname : String?
    var sdept : String?
    var sphone : String?
    
    // Empty constructor
    override init() {
        
    }
    
    init(scode : String, sname : String, sdept : String, sphone : String){
        self.scode = scode
        self.sname = sname
        self.sdept = sdept
        self.sphone = sphone
    }
}
