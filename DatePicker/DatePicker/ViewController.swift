//
//  ViewController.swift
//  DatePicker
//
//  Created by 박성준 on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval=1.0
    let timeSelector:Selector=#selector(ViewController.updateTime)

    override func viewDidLoad() {
        super.viewDidLoad()
        lblPickerTime.text="시간을 선택하세요!"
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker){
        let datePickerView=sender
        let formatter=DateFormatter()
        
        formatter.locale=Locale(identifier: "ko")
        formatter.dateFormat="yyyy-MM-dd EEE a hh:mm"
        lblPickerTime.text="\(formatter.string(from: datePickerView.date))"
    }
    
    
    @objc func updateTime(){
        let date=NSDate() // Next Step
        let formatter=DateFormatter()
        let formatter2=DateFormatter()
        
        formatter.locale=Locale(identifier: "ko")
        formatter2.locale=Locale(identifier: "ko")
        formatter.dateFormat="yyyy-MM-dd EEE a hh:mm:ss"
        formatter2.dateFormat="yyyy-MM-dd EEE a hh:mm"
        lblCurrentTime.text="현재시간 : \(formatter.string(from: date as Date))"
        
        
        if formatter2.string(from: date as Date)==lblPickerTime.text{
            if Int(formatter.string(from: date as Date).suffix(2))!%2==0{
                view.backgroundColor=UIColor.red
            }else{
                view.backgroundColor=UIColor.blue
            }
        }else{
            view.backgroundColor=UIColor.white
        }
    }
    
}

