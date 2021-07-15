//
//  ViewController.swift
//  EvenOdd
//
//  Created by 박성준 on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var insertNum: UITextField!
    
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn(_ sender: UIButton) {
//      let num=Int(insertNum!) ?? 0
        
//        guard let num=insertNum.text else {return}
//
//        lblMessage.text=((Int(num)!%2) != 0) ? "입력하신 숫자는 홀수입니다." : "입력하신 숫자는 짝수입니다."
        
        let numCheck=checkNil(str: insertNum.text!)
        if numCheck==1{
            let returnValue=numberDecision(str: insertNum.text!)
            lblMessage.text="입력 하신 숫자는 \(returnValue)입니다."
        }else{
            lblMessage.text="숫자를 확인하세요!"
        }
        
    }
    
    func checkNil(str:String!) -> Int{
        let check=str.trimmingCharacters(in: .whitespacesAndNewlines)
        if check.isEmpty{
            return 0
        }else{
            return 1
        }
    }
    
    func numberDecision(str:String!)->String{
        if Int(str)!%2==0{
            return "짝수"
        }else{
            return "홀수"
        }
    }
    
    
}

