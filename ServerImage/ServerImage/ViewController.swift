//
//  ViewController.swift
//  ServerImage
//
//  Created by 박성준 on 2021/07/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    
    var imageList:[UIImage]=[]
    var numImage=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewImage()
        imgView.image = imageList[numImage]
    }

    @IBAction func btnImage1(_ sender: UIButton) {
        let url: URL = URL(string: "http://192.168.35.169:8080/ios/flower_01.png")!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil{
                print("Failed to donwload data")
            }else{
                print("Data is donwloaded")
                DispatchQueue.main.async {
                    self.imgView.image = UIImage(data: data!)
                    if let image = UIImage(data: data!){
                        if let data = image.pngData(){
                            let filename = self.getDocumentDirectory().appendingPathComponent("copy.png")
                            try? data.write(to: filename)
                        }
                    }
                }
            }
            
        }
        task.resume()
    }
    
    
    func getDocumentDirectory() -> URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    @IBAction func btnImage2(_ sender: UIButton) {
        let url = URL(string: "http://192.168.35.169:8080/ios/flower_02.png")
        let data = try? Data(contentsOf: url!)
        imgView.image = UIImage(data: data!)
    }
    
    @IBAction func btnPrev(_ sender: UIButton) {
        numImage-=1
        if(numImage<0){
            numImage=imageList.count-1
        }
        imgView.image = imageList[numImage]
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        numImage+=1
        if(numImage==imageList.count){
            numImage=0
        }
        imgView.image = imageList[numImage]
    }
    
    
    func viewImage(){
        for i in 1...6{
            let url = URL(string: "http://192.168.35.169:8080/ios/flower_0\(i).png")
            let data = try? Data(contentsOf: url!)
            imageList.append(UIImage(data: data!)!)
        }
    }
}

