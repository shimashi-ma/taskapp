//
//  ViewController.swift
//  taskapp
//
//  Created by mikako kinugawa on 2019/10/03.
//  Copyright © 2019 mikako.kinugawa. All rights reserved.
//

import UIKit

//承継クラスの後に,区切りでプロトコルを指定。
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //tableViewの実装をViewControllerに委譲。（デリゲートの指定。）
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: UITableViewDateSourceプロトコルのメソッド
    // データの数（＝セルの数）を返すメソッド（テーブル内に何行並べるか）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10  //0個のデータがあるという意味
    }
    
    //各セルの内容を返すメソッド（どんな内容を表示するかを返すメソッド）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 再利用可能なcellを得る
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    
    // MARK: UITableViewDalegateプロトコルのメソッド
    // 格セルを選択した時に実行されるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        performSegue(withIdentifier: "cellSegue",sender: nil)
    }
    
    //セルが削除可能なことを伝えるメソッド
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath)-> UITableViewCell.EditingStyle{
        return.delete //削除可能にするためdeleteを返している
    }
    
    //Deleteボタンが押された時に呼ばれるメソッド
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        
    }

}

