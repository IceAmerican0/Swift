//
//  ViewController.swift
//  NavigationLamp
//
//  Created by 박성준 on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    
    let imgOn=UIImage(named: "lamp_on.png")
    let imgOff=UIImage(named: "lamp_off.png")
    let imgRed=UIImage(named: "lamp_red.png")
    
    var isOn=true
    var isRed=false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image=imgOn
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController=segue.destination as! EditViewController
        
        
        editViewController.isOn=isOn
        editViewController.isRed=isRed
        editViewController.delegate=self
    }


}

extension ViewController:Editdelegate{
    func didImageOnOff(_ controller:EditViewController, isOn:Bool, isRed:Bool){
        if isRed{
            imgView.image=imgRed
            self.isRed=true
            self.isOn=false
        }else if isOn{
            imgView.image=imgOn
            self.isOn=true
            self.isRed=false
        }else{
            imgView.image=imgOff
            self.isRed=false
            self.isOn=true
        }
    }
    
}

