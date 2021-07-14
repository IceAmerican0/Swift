//
//  ViewController.swift
//  사칙연산
//
//  Created by 박성준 on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    
    
    @IBOutlet weak var add: UITextField!
    
    @IBOutlet weak var min: UITextField!
    @IBOutlet weak var mul: UITextField!
    
    @IBOutlet weak var div: UITextField!
    
    @IBOutlet weak var div1: UITextField!
    
    @IBOutlet weak var div2: UITextField!
    
    @IBOutlet weak var lblMessage: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func btnCal(_ sender: UIButton) {
        let num1int=Int(num1.text!)
        let num2int=Int(num2.text!)
        
        if num1.text==""||num2.text==""{
            lblMessage.text="숫자를 확인하세요!"
        }else{
            add.text="\(num1int!+num2int!)"
            min.text="\(num1int!-num2int!)"
            mul.text="\(num1int!*num2int!)"
            div.text="\(num1int!/num2int!)"
            div1.text="\(num1int!/num2int!)"
            div2.text="\(num1int!%num2int!)"
            lblMessage.text="계산이 되었습니다!"
        }
    }
    
}

