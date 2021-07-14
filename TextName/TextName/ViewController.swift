//
//  ViewController.swift
//  TextName
//
//  Created by 박성준 on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfWelcome: UILabel!
    
    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var tfName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblMessage.text="환영합니다!"
    }


    @IBAction func btnSend(_ sender: UIButton) {
        if tfName.text?.isEmpty==true{
            lblMessage.text="텍스트를 입력하세요!"
        }else{
            tfWelcome.text="Welcome! \(tfName.text!)"
            lblMessage.text="텍스트를 추가했습니다!"
        }
    }
    
    
    @IBAction func btnClear(_ sender: Any) {
        tfName.text?.removeAll()
        tfWelcome.text="Welcome!"
        lblMessage.text="화면 초기상태입니다!"
    }
    
}

