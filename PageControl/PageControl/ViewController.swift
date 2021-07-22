//
//  ViewController.swift
//  PageControl
//
//  Created by 박성준 on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {
//    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var number: UILabel!
    
//    var images=["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        imgView.image=UIImage(named: images[0])
        
//        pageControl.numberOfPages=images.count
        pageControl.numberOfPages=10
        pageControl.currentPage=0
        pageControl.pageIndicatorTintColor=UIColor.green
        pageControl.currentPageIndicatorTintColor=UIColor.red
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
//        imgView.image=UIImage(named: images[pageControl.currentPage])
        number.text="\(pageControl.currentPage+1)"
        if (pageControl.currentPage + 1)%2==0{
            number.textColor=UIColor.blue
        }else{
            number.textColor=UIColor.red
        }
        
    }
    
}

