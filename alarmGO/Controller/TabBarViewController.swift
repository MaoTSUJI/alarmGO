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

    let itemLabels = ["アラーム", "マップ"]
    let iconNames:[FontAwesome] = [.clock, .mapMarkedAlt]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabItems = self.tabBar.items as [UITabBarItem]?
        
        // フォント設定
        for index in 0..<itemLabels.count {
            let currentItem = tabItems?[index] as! UITabBarItem
            currentItem.title = itemLabels[index]
            currentItem.image = UIImage.fontAwesomeIcon(name: iconNames[index], style: .solid, textColor: .black, size: CGSize(width: 30, height: 30))
        
        }
        
        
    }
    

   

}
