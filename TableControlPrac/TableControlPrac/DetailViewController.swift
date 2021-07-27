//
//  DetailViewController.swift
//  TableControlPrac
//
//  Created by 박성준 on 2021/07/23.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblText: UILabel!
    
    var receiveItem=""
    var receiveImage=""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblText.text=receiveItem
        imgView.image=UIImage(named: receiveImage)
    }
    
    func receiveItems(_ item:String, _ image:String){
        receiveItem=item
        receiveImage=image
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
