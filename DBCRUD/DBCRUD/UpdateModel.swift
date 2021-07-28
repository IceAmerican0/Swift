//
//  UpdateModel.swift
//  DBCRUD
//
//  Created by 박성준 on 2021/07/28.
//

import Foundation

class UpdateModel: NSObject{
    var urlPath = "http://192.168.103.42:8080/ios/studentUpdate_ios.jsp"
    
    func updateItems(code: String, name:String, dept: String, phone: String) -> Bool{
        var result: Bool = true
        let urlAdd = "?code=\(code)&name=\(name)&dept=\(dept)&phone=\(phone)"
        urlPath = urlPath + urlAdd
        
        print(urlPath)
        // 한글 url encoding
        urlPath = urlPath.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        
        let url: URL = URL(string: urlPath)!
        let defaultSession = URLSession(configuration: URLSessionConfiguration.default)
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil{
                print("Failed to update data")
                result = false
            }else{
                print("Data is updated!")
                result = true
            }
        }
        task.resume()
        return result
    }
}
