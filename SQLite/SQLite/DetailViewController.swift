//
//  DetailViewController.swift
//  SQLite
//
//  Created by 박성준 on 2021/07/27.
//

import UIKit
import SQLite3

class DetailViewController: UIViewController {
    @IBOutlet weak var tfNum: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfDept: UITextField!
    @IBOutlet weak var tfTel: UITextField!
    
    var db : OpaquePointer?
    
    var receiveItem=Students(id: 0, name: nil, dept: nil, phone: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("StudentsData.sqlite")
        
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK{
            print("error opening database")
        }

        tfNum.text=String(receiveItem.id)
        tfName.text=receiveItem.name
        tfDept.text=receiveItem.dept
        tfTel.text=receiveItem.phone
    }
    
    func receiveItems(_ students:Students){
        receiveItem=students
    }
    
    @IBAction func btnUpdate(_ sender: UIButton) {
        var stmt : OpaquePointer?
        let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
        
        let sid=Int32(tfNum.text!)
        let name = tfName.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let dept = tfDept.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let phone = tfTel.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let queryString = "update students set sname=?, sdept=?, sphone=? where sid=?"
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing update : \(errmsg)")
            return
        }
        
        if sqlite3_bind_text(stmt, 1, name, -1, SQLITE_TRANSIENT) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error binding name : \(errmsg)")
            return
        }
        
        if sqlite3_bind_text(stmt, 2, dept, -1, SQLITE_TRANSIENT) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error binding dept : \(errmsg)")
            return
        }
        
        if sqlite3_bind_text(stmt, 3, phone, -1, SQLITE_TRANSIENT) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error binding phone : \(errmsg)")
            return
        }
        
        if sqlite3_bind_int(stmt, 4, sid!) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error binding sid : \(errmsg)")
            return
        }
        
        if sqlite3_step(stmt) != SQLITE_DONE{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure updating student : \(errmsg)")
            return
        }
        
        let resultAlert = UIAlertController(title : "결과", message: "수정되었습니다.", preferredStyle: .alert)
        let okAction = UIAlertAction(title : "네, 알겠습니다.", style : .default, handler: {ACTION in
            self.navigationController?.popViewController(animated: true)
        })
        
        resultAlert.addAction(okAction)
        present(resultAlert, animated: true, completion: nil)
    }
    
    @IBAction func btnDelete(_ sender: UIButton) {
        var stmt : OpaquePointer?
        let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
        
        let sid=tfNum.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let queryString = "delete from students where sid=?"
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing delete : \(errmsg)")
            return
        }
        
        if sqlite3_bind_text(stmt, 1, sid, -1, SQLITE_TRANSIENT) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error binding id : \(errmsg)")
            return
        }
        
        if sqlite3_step(stmt) != SQLITE_DONE{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure deleting student : \(errmsg)")
            return
        }
        
        let resultAlert = UIAlertController(title : "결과", message: "삭제되었습니다.", preferredStyle: .alert)
        let okAction = UIAlertAction(title : "네, 알겠습니다.", style : .default, handler: {ACTION in
            self.navigationController?.popViewController(animated: true)
        })
        
        resultAlert.addAction(okAction)
        present(resultAlert, animated: true, completion: nil)
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
