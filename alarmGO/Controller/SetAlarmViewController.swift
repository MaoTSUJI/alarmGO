//
//  SetAlarmViewController.swift
//  alarmGO
//
//  Created by 辻真緒 on 2019/09/10.
//  Copyright © 2019 辻真緒. All rights reserved.
//

import UIKit
import Firebase

class SetAlarmViewController: UIViewController {

    @IBOutlet weak var placeTextField: UITextField!
    
    var alarmTime:Date = Date()
    var place = ""
    var buttonType = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // ナビゲーションアイテムに保存ボタンの設置
        let rightSideOptionButton = UIBarButtonItem()
        rightSideOptionButton.title = "保存"
        self.navigationItem.rightBarButtonItem = rightSideOptionButton
        
        // タイトル文字列の設定
        if buttonType == "create" {
            self.navigationItem.title = "アラームを追加"
        } else if buttonType == "edit" {
            self.navigationItem.title = "アラームを編集"
        }
        
        
        print("alarmTime: \(alarmTime)")
        
    }
    
    @IBAction func didSetTime(_ sender: UIDatePicker) {
        
        // DataPickerが変更された時の処理
        alarmTime = sender.date
        print("alarmTime: \(alarmTime)")
        
    }

    
    @IBAction func didClickSave(_ sender: UIButton) {

        if placeTextField.text!.isEmpty {
            return
        }

        let placeName = placeTextField.text!

        
        
        performSegue(withIdentifier: "backToAlarm", sender: placeName)

    }

}
