//
//  ViewController.swift
//  Button1
//
//  Created by 박성준 on 2021/07/14.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var tfName: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BtnName(_ sender: Any) {
        if tfName.text=="Welcome!"{
            tfName.text?.append(" 박성준")
        }else{
            tfName.text="Welcome!"
        }
    }
    
}

