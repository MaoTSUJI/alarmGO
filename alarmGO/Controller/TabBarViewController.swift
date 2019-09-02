//
//  TabBarViewController.swift
//  alarmGO
//
//  Created by 辻真緒 on 2019/09/02.
//  Copyright © 2019 辻真緒. All rights reserved.
//

import UIKit
import FontAwesome_swift

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // フォント設定
        self.tabBar.items![0].setFAIcon(icon: .FAAddressBook, size: nil, textColor: .white, backgroundColor: .black, selectedTextColor: .white, selectedBackgroundColor: .black)
        self.tabBar.items![1].setFAIcon(icon: .FAAddressCard, size: nil, textColor: .white, backgroundColor: .black, selectedTextColor: .white, selectedBackgroundColor: .black)
        
        

        
    }
    

   

}
