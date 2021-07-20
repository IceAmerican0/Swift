//
//  ViewController.swift
//  Messenger
//
//  Created by 박성준 on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tvResult: UITextView!
    @IBOutlet weak var tfInput: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){ self.view.endEditing(true) }

    @IBAction func btnSend(_ sender: UIButton) {
        let strInput =  tfInput.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if !strInput.isEmpty{
            tvResult.text += "\(strInput)\n"
        }
    }
    
    @IBAction func btnEmoji(_ sender: UIButton) {
        tfInput.text!.append("🤗")
    }
    
}

