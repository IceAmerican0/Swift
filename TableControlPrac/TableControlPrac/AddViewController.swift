//
//  AddViewController.swift
//  TableControlPrac
//
//  Created by 박성준 on 2021/07/23.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var tfInput: UITextField!
    
    var imageName=["cart.png","clock.png","pencil.png"]
    
    var imageArray=[UIImage?]()
    var maxArrayNum=0
    var selectedrow=0
    let viewColumn=1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image=UIImage(named: imageName[0])
        
        maxArrayNum=imageName.count
        
        for i in 0..<maxArrayNum{
            let image=UIImage(named:imageName[i])
            imageArray.append(image)
        }
        
        
        
        pickerView.dataSource=self
        
        pickerView.delegate=self
    }
    
    @IBAction func btnAdd(_ sender: UIButton) {
        items.append(tfInput.text!)
        itemsImageFile.append(imageName[selectedrow])
        navigationController?.popViewController(animated: true)
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

extension AddViewController: UIPickerViewDataSource{
    
    //pickerView의 컬럼 갯수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return viewColumn
    }
    
    //출력할 이미지 파일 갯수
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return maxArrayNum
    }
}

extension AddViewController: UIPickerViewDelegate{
    
    // PickerView에 Title 입히기
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let image=UIImageView(image: imageArray[row])
        image.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        return image
    }
    
    // PickerView에 Image 선택
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        imgView.image=UIImage(named: imageName[row])
        selectedrow=row
    }
}
