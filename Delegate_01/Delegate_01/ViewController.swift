//
//  ViewController.swift
//  Delegate_01
//
//  Created by 박성준 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfInput.delegate = self
    }

    @IBAction func btnAction(_ sender: UIButton) {
        lblResult.text=tfInput.text
    }
    
}

extension ViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        lblResult.text=tfInput.text
        return true
    }
}
