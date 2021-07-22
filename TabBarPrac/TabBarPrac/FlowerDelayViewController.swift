//
//  ViewController.swift
//  FlowerDelay
//
//  Created by 박성준 on 2021/07/19.
//

import UIKit

class FlowerDelayViewController: UIViewController {
    
    let interval=3.0
    let timeSelector:Selector=#selector(FlowerDelayViewController.updateTime)
    
    var i=0
    var imageName=["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var ImgFlower: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }


    @objc func updateTime(){
        i+=1
        if i==imageName.count{
            i=0
        }
        
        lblName.text=imageName[i]
        ImgFlower.image=UIImage(named: imageName[i])
    }
}

