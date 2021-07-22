//
//  ViewController.swift
//  PickerViewWeb
//
//  Created by 박성준 on 2021/07/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PickerView: UIPickerView!
    @IBOutlet weak var WebView: WKWebView!
    
    
    var viewColumn=1
    var maxArrayNum=0
    var Sites=["www.naver.com","www.google.com","www.daum.net","www.cnn.com","www.amazon.com"]
    var SitesK=["네이버","구글","다음","CNN","아마존"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        maxArrayNum=Sites.count
        PickerView.dataSource=self
        PickerView.delegate=self
    }


}

extension ViewController: UIPickerViewDataSource{
    
    //pickerView의 컬럼 갯수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return viewColumn
    }
    
    //출력할 이미지 파일 갯수
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return maxArrayNum
    }
}

extension ViewController: UIPickerViewDelegate{
    
    // PickerView에 Title 입히기
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return SitesK[row]
    }
    
    // PickerView에 Image 선택
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        let myUrl = URL(string : "https://"+Sites[row])
        let myRequest = URLRequest(url: myUrl!)
        WebView.load(myRequest)
    }
}


