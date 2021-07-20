//
//  ViewController.swift
//  Alert
//
//  Created by 박성준 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lamp: UIImageView!
    
    let imgOn=UIImage(named: "lamp_on.png")
    let imgOff=UIImage(named: "lamp_off.png")
    let imgRemove=UIImage(named: "lamp_remove.png")
    
    var isLampOn=false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lamp.image=imgOff
    }

    
    @IBAction func btnLampOn(_ sender: UIButton) {
        if isLampOn{
            btnLampOnAlready()
        }else{
            lamp.image=imgOn
            isLampOn=true
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        if !isLampOn{
            btnLampOffAlready()
        }else{
            btnLampOffAction()
        }
    }
    

    @IBAction func btnLampRemove(_ sender: UIButton) {
        let lampOnAlert=UIAlertController(title: "램프 제거?", message: "램프를 제거할까요?", preferredStyle: .alert)
        let actionOff=UIAlertAction(title: "아니오, 끕니다!", style: .default, handler: { [self] Action in
            if !isLampOn{
                btnLampOffAlready()
            }else{
                btnLampOffAction()
            }
        })
        let actionOn=UIAlertAction(title: "아니오, 켭니다!", style: .default, handler: { [self] Action in
            if isLampOn{
                btnLampOnAlready()
            }else{
                lamp.image=imgOn
                isLampOn=true
            }
        })
        let actionDelete=UIAlertAction(title: "네! 제거 합니다.", style: .default, handler: { [self] Action in
            lamp.image=imgRemove
            isLampOn=false
        })
        
        lampOnAlert.addAction(actionOn)
        lampOnAlert.addAction(actionOff)
        lampOnAlert.addAction(actionDelete)
        
        present(lampOnAlert, animated: true, completion: nil)
    }
    
    
    
    func btnLampOnAlready(){
        let lampOnAlert=UIAlertController(title: "경고", message: "현재 On 상태입니다.", preferredStyle: .alert)
        let onAction=UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: nil)
        
        lampOnAlert.addAction(onAction)
        present(lampOnAlert, animated: true, completion: nil)
    }
    
    
    
    func btnLampOffAlready(){
        let lampOnAlert=UIAlertController(title: "경고", message: "현재 Off 상태입니다.", preferredStyle: .alert)
        let onAction=UIAlertAction(title: "네, 알겠습니다.", style: .default, handler: nil)
        
        lampOnAlert.addAction(onAction)
        present(lampOnAlert, animated: true, completion: nil)
    }
    
    
    
    
    func btnLampOffAction(){
        let lampOnAlert=UIAlertController(title: "램프 끄기", message: "램프를 끄시겠습니까?", preferredStyle: .alert)
        let onAction=UIAlertAction(title: "네", style: .default, handler: { [self]ACTION in
            lamp.image=imgOff
            isLampOn=false
        })
        let onAction2=UIAlertAction(title: "아니오", style: .default, handler: nil)
        
        lampOnAlert.addAction(onAction)
        lampOnAlert.addAction(onAction2)
        
        present(lampOnAlert, animated: true, completion: nil)
        
    }
    
    
}

