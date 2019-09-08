//
//  ViewController.swift
//  alarmGO
//
//  Created by 辻真緒 on 2019/09/02.
//  Copyright © 2019 辻真緒. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var lists: [List] = [] {
        didSet {
            // TableViewをリロードする
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    @IBAction func didClickNewCreate(_ sender: UIButton) {
    
        performSegue(withIdentifier: "toSetAlarm", sender: nil)
    
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let list = lists[indexPath.row]
        // TableViewの中のcellテキストにlistのnameを代入
        cell.textLabel?.text = list.name
        // cellのアクセサリーを設定
        cell.accessoryType = .disclosureIndicator
        
        return cell
        
    }
    
    
    
    
}
