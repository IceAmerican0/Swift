//
//  DetailViewController.swift
//  Kanna_02
//
//  Created by 박성준 on 2021/07/26.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    var receiveItem=""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let myUrl = URL(string : receiveItem)
        let myRequest = URLRequest(url: myUrl!)
        webView.load(myRequest)
        webView.navigationDelegate=self
    }
    
    func receiveItems(_ item:String){
        receiveItem=item
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

extension DetailViewController:WKNavigationDelegate{
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        indicator.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        indicator.stopAnimating()
    }
}
