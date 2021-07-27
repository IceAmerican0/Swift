//
//  DetailViewController.swift
//  Table
//
//  Created by 박성준 on 2021/07/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var lblItem: UILabel!
    
    var receiveItem=""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblItem.text=receiveItem
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
