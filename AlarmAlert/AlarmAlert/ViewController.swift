//
//  ViewController.swift
//  AlarmAlert
//
//  Created by 박성준 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblNow: UILabel!
    @IBOutlet weak var PickerView: UIPickerView!
    @IBOutlet weak var lblSelect: UILabel!
    
    let interval=1.0
    let timeSelector:Selector=#selector(ViewController.updateTime)
    var alarmOn=false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
        
    }
    
    
    @IBAction func DatePicker(_ sender: UIDatePicker) {
        let datePickerView=sender
        let formatter=DateFormatter()
        
        formatter.locale=Locale(identifier: "ko")
        formatter.dateFormat="yyyy-MM-dd EEE a hh:mm"
        lblSelect.text="\(formatter.string(from: datePickerView.date))"
        alarmOn=false
    }
    

    
    @objc func updateTime(){
        let date=NSDate() // Next Step
        let formatter=DateFormatter()
        let formatter2=DateFormatter()
        
        formatter.locale=Locale(identifier: "ko")
        formatter2.locale=Locale(identifier: "ko")
        formatter.dateFormat="yyyy-MM-dd EEE a hh:mm:ss"
        formatter2.dateFormat="yyyy-MM-dd EEE a hh:mm"
        lblNow.text="현재시간 : \(formatter.string(from: date as Date))"
        
        if !alarmOn{
            if formatter2.string(from: date as Date)==lblSelect.text{
                let lampOnAlert=UIAlertController(title: "알림", message: "설정된 시간입니다!!", preferredStyle: .alert)
                let onAction=UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: {Action in
                    self.alarmOn=true;
                })
                
                lampOnAlert.view.backgroundColor=UIColor.yellow
                lampOnAlert.addAction(onAction)
                present(lampOnAlert, animated: true, completion: nil)
            }else{
                
            }
        }
    }

}

