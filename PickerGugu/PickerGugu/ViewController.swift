//
//  ViewController.swift
//  PickerGugu
//
//  Created by 박성준 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var PickerView: UIPickerView!
    @IBOutlet weak var tvResult: UITextView!
    
    var gugu=Array<Int>(2...9)
        
    var maxArrayNum=0
    let viewColumn=1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblName.text="2단"
        
        for i in 1..<gugu.count{
            tvResult.text.append("2 X \(i) = \(2*i)\n")
        }
        
        maxArrayNum=gugu.count
        
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
        return "\(gugu[row])단"
    }
    
    // PickerView에 Image 선택
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblName.text = "\(gugu[row])단"
    
        
        tvResult.text=""
        for i in 1..<gugu.count{
            tvResult.text.append("\(gugu[row]) X \(i) = \(gugu[row]*i)\n")
        }
    }
}

