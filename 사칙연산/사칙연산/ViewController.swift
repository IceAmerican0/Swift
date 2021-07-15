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
        readOnly()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func btnCal(_ sender: UIButton) {
        
        
        guard let Strnum1=num1.text else {return}
        guard let Strnum2=num2.text else {return}
        
        if num1.text==""{
            num1.becomeFirstResponder()
            lblMessage.text="첫번째 숫자를 입력하세요!"
        }else if num2.text==""{
            num2.becomeFirstResponder()
            lblMessage.text="두번째 숫자를 입력하세요!"
        }else{
            let num1int=Int(Strnum1)!
            let num2int=Int(Strnum2)!
            
            calculation(num1int,num2int)
            
        }
    }
    
    
    //결과값 readonly처리
    func readOnly(){
        add.isUserInteractionEnabled=false;
        min.isUserInteractionEnabled=false;
        mul.isUserInteractionEnabled=false;
        div.isUserInteractionEnabled=false;
        div1.isUserInteractionEnabled=false;
        div2.isUserInteractionEnabled=false;
    }
    
    func calculation(_ num1int:Int,_ num2int:Int){
        let num1double=Double(num1int)
        let num2double=Double(num2int)
        
        add.text="\(num1int+num2int)"
        min.text="\(num1int-num2int)"
        mul.text="\(num1int*num2int)"
        if num1.text=="0"||num2.text=="0"{
            div.text="계산 X"
            div1.text="계산 X"
            div2.text="계산 X"
        }else{
            div.text="\(num1double/num2double)"
            div1.text="\(num1double/num2double)"
            div2.text="\(num1int%num2int)"
        }
        
        lblMessage.text="계산이 되었습니다!"
    }
    
}

