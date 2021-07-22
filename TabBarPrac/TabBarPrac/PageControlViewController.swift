//
//  ViewController.swift
//  PageControl
//
//  Created by 박성준 on 2021/07/21.
//

import UIKit

class PageControlViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var imgView: UIImageView!
    
    var images=["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image=UIImage(named: images[0])
        
        pageControl.numberOfPages=images.count
        pageControl.currentPage=0
        pageControl.pageIndicatorTintColor=UIColor.green
        pageControl.currentPageIndicatorTintColor=UIColor.red
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image=UIImage(named: images[pageControl.currentPage])
        
    }
    
}

