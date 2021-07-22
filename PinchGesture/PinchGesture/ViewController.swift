//
//  ViewController.swift
//  PinchGesture
//
//  Created by 박성준 on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_ :)))
        self.view.addGestureRecognizer(pinch)
    }
    
    @objc func doPinch(_ pinch: UIPinchGestureRecognizer){
        imgView.transform=imgView.transform.scaledBy(x: pinch.scale, y: pinch.scale)
        pinch.scale=1
    }


}

