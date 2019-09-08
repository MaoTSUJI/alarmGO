//
//  SetAlarmViewController.swift
//  alarmGO
//
//  Created by 辻真緒 on 2019/09/02.
//  Copyright © 2019 辻真緒. All rights reserved.
//

import UIKit

class SetAlarmViewController: UITabBarController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var placeTextField: UITextField!
    
    var alarmTime:Date = Date()
    var place = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    
    @IBAction func didSetTime(_ sender: UIDatePicker) {
        
        // DataPickerが変更された時の処理
        alarmTime = sender.date
        print("alarmTime: \(alarmTime)")
        
    }
    
    @IBAction func didClickSave(_ sender: UIButton) {
    
    
    }
    

}

