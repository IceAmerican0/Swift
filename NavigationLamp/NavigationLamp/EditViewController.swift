//
//  EditViewController.swift
//  NavigationLamp
//
//  Created by 박성준 on 2021/07/22.
//

import UIKit

class EditViewController: UIViewController {
    @IBOutlet weak var lblOnOff: UILabel!
    @IBOutlet weak var switchOn: UISwitch!
    @IBOutlet weak var switchRed: UISwitch!
    
    var isOn:Bool=true
    var isRed:Bool=false
    
    var delegate:Editdelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        switchOn.isOn=isOn
        switchRed.isOn=isRed
        if isOn{
            lblOnOff.text="On"
        }else{
            lblOnOff.text="Off"
        }
    }
    
    @IBAction func btnComplete(_ sender: UIButton) {
        if delegate != nil{
            delegate?.didImageOnOff(self, isOn: isOn, isRed: isRed)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func switchOn(_ sender: UISwitch) {
        if sender.isOn{
            isOn=true
            isRed=false
            lblOnOff.text="On"
        }else{
            isOn=false
            lblOnOff.text="Off"
            isRed=false
            switchRed.isOn=false
        }
    }
    
    @IBAction func switchRed(_ sender: UISwitch) {
        if sender.isOn{
            isRed=true
        }else{
            isRed=false
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
