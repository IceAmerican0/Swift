//
//  ViewController.swift
//  Emoji
//
//  Created by 박성준 on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblEmoji: UILabel!
    
    var arrEmoji=["😀","🙌","☠️","😙","👽","👻"]
    var i=1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblEmoji.text=arrEmoji[0]
    }


    @IBAction func btnPlay(_ sender: Any) {
        i+=1
        if(i==arrEmoji.count){
          i=0
        }
        lblEmoji.text=arrEmoji[i]
    }
    
    
    @IBAction func btnPrev(_ sender: UIButton) {
        i-=1
        if(i<0){
            i=arrEmoji.count-1
        }
        lblEmoji.text=arrEmoji[i]
    }
}

