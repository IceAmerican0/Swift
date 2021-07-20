//
//  ViewController.swift
//  MultiLine
//
//  Created by 박성준 on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvResult.isEditable=false
    }

    @IBAction func btnAppend(_ sender: UIButton) {
        let strInput =  tfInput.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if !strInput.isEmpty{
            for i in 1..<10{
                tvResult.text += "\(strInput) X \(i) = \(String(format:"%2d",Int(strInput)!*i))\n"
            }
        }else{
            for i in 1..<10{
                tvResult.text += "2 X \(i) = \(2*i)\n"
            }
        }
        
    }
    
}

