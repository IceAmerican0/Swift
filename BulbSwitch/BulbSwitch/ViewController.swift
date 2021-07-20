//
//  ViewController.swift
//  BulbSwitch
//
//  Created by 박성준 on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    @IBOutlet weak var bulbSize: UILabel!
    
    var imgOn:UIImage?
    var imgOff:UIImage?
    
    var isZoom=false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image=imgOn
    }

//    @IBAction func btnResizeImage(_ sender: UIButton) {
//        let scale:CGFloat=2.0
//        var newWidth:CGFloat
//        var newHeight:CGFloat
//
//        if isZoom{
//            newWidth=imgView.frame.width / scale
//            newHeight=imgView.frame.height / scale
//            btnResize.setTitle("Image 확대", for: .normal)
//        }else{
//            newWidth=imgView.frame.width * scale
//            newHeight=imgView.frame.height*scale
//            btnResize.setTitle("Image 축소", for: .normal)
//        }
//
//        imgView.frame.size=CGSize(width: newWidth, height: newHeight)
//        isZoom = !isZoom
//
//    }
    
    @IBAction func switchSize(_ sender: UISwitch) {
        let scale:CGFloat=2.0
        var newWidth:CGFloat
        var newHeight:CGFloat
        
        switch sender.isOn{
        case true:
            newWidth=imgView.frame.width * scale
            newHeight=imgView.frame.height * scale
            bulbSize.text="전구 축소"
        default:
            newWidth=imgView.frame.width / scale
            newHeight=imgView.frame.height / scale
            bulbSize.text="전구 확대"
        }
        imgView.frame.size=CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        switch sender.isOn{
        case true:
            imgView.image=imgOn
        default:
            imgView.image=imgOff
        }
        
        
//        if sender.isOn{
//            imgView.image=imgOn
//        }else{
//            imgView.image=imgOff
//        }
    }
    
    
}

