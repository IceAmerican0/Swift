//
//  ViewController.swift
//  rangeAdd
//
//  Created by 박성준 on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNum: UITextField!
    
    @IBOutlet weak var secondNum: UITextField!
    
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: UIButton) {
        if checkNil(str: firstNum.text!)==1&&checkNil(str: secondNum.text!)==1{
            guard let intnum1=Int(firstNum.text!) else {return}
            guard let intnum2=Int(secondNum.text!) else {return}
            var sum:Int=0
            
            if intnum2>intnum1{
                for i in intnum1...intnum2{
                    sum+=i
                }
            }else{
                for i in intnum2...intnum1{
                    sum+=i
                }
            }
            
            lblMessage.text="범위의 합계는 \(sum)"
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
    
}

