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
        
        // 次の画面のBackボタンを「戻る」に変更
        self.navigationItem.backBarButtonItem = UIBarButtonItem(
            title:  "戻る",
            style:  .plain,
            target: nil,
            action: nil
        )
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }

    @IBAction func didClickNewCreate(_ sender: UIButton) {
    
        let inputValue = "create"
        performSegue(withIdentifier: "toSetAlarm", sender: inputValue)
        
    }
    
    @IBAction func didClickEdit(_ sender: UIButton) {

        let inputValue = "edit"
        performSegue(withIdentifier: "toSetAlarm", sender: inputValue)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSetAlarm" {
            let nextVC = segue.destination as! SetAlarmViewController
            nextVC.buttonType = sender as! String
        }
        
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
