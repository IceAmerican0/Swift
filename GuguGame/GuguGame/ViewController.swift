//
//  ViewController.swift
//  GuguGame
//
//  Created by 박성준 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblNum1: UILabel!
    @IBOutlet weak var lblNum2: UILabel!
    @IBOutlet weak var tfAnswer: UITextField!
    
    var answer=0
    var inputAnswer=0

    override func viewDidLoad() {
        super.viewDidLoad()
        lblNum1.text="\(genNum())"
        lblNum2.text="\(genNum())"
        
    }

    
    @IBAction func btnCal(_ sender: UIButton) {
        inputAnswer=Int(tfAnswer.text!) ?? 0
        answer=Int(lblNum1.text!)! * Int(lblNum2.text!)!
        if inputAnswer==answer{
            let lampOnAlert=UIAlertController(title: "결과", message: "정답입니다!", preferredStyle: .alert)
            let onAction=UIAlertAction(title: "다음 문제 진행", style: .default, handler: {[self]Action in
                lblNum1.text="\(genNum())"
                lblNum2.text="\(genNum())"
                tfAnswer.text=""
            })
            
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        }else{
            let lampOnAlert=UIAlertController(title: "결과", message: "정답이 아닙니다.", preferredStyle: .alert)
            let onAction=UIAlertAction(title: "네, 알겠습니다", style: .default, handler: nil)
            
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        }
    }
    
    func genNum() ->String{
        return String(Int.random(in: 1..<10))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){ self.view.endEditing(true) }
    
}

