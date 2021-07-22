//
//  ViewController.swift
//  PageControlWeb
//
//  Created by 박성준 on 2021/07/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var sites=["https://www.youtube.com","https://www.yahoo.com","https://www.google.com","http://www.amazon.com","https://www.cnn.com"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageControl.numberOfPages=sites.count
        pageControl.currentPage=0
        pageControl.pageIndicatorTintColor=UIColor.green
        pageControl.currentPageIndicatorTintColor=UIColor.red
        
        pageViewer()
        
        makeSingleTouch()
    }
    
    
    @IBAction func pageChange(_ sender: UIPageControl) {
        pageViewer()
    }
    
    func pageViewer(){
        let myUrl = URL(string : sites[pageControl.currentPage])
        let myRequest = URLRequest(url: myUrl!)
        webView.load(myRequest)
    }
    
    func makeSingleTouch(){
        let swipeLeft=UISwipeGestureRecognizer(target:self,action: #selector(ViewController.respondToSwipeGesture(_:)))
        
        swipeLeft.direction=UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight=UISwipeGestureRecognizer(target:self,action: #selector(ViewController.respondToSwipeGesture(_:)))
        
        swipeRight.direction=UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @objc func respondToSwipeGesture(_ gesture:UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            switch swipeGesture.direction{
            case UISwipeGestureRecognizer.Direction.left:
                pageControl.currentPage -= 1
                pageViewer()
            case UISwipeGestureRecognizer.Direction.right:
                pageControl.currentPage += 1
                pageViewer()
            default:
                break
            }
        }
    }

}

