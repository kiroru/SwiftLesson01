//
//  ViewController.swift
//  SwiftLesson01
//
//  Created by ueda on 2018/08/21.
//  Copyright © 2018年 kohei.ueda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelButton5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // ログを表示する。
    @IBAction func button1(_ sender: UIButton) {
        print("ボタン１が押されました")
    }
    
    // アラートを表示する。
    @IBAction func button2(_ sender: UIButton) {
        let alert = UIAlertController(title: "タイトル", message: "ボタン２が押されました", preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action: UIAlertAction!) -> Void in
            print("button2 end")
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    // アクションシートを表示する。
    @IBAction func button3(_ sender: UIButton) {
        let alert = UIAlertController(title: "タイトル", message: "ボタン３が押されました", preferredStyle:UIAlertControllerStyle.actionSheet)
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action: UIAlertAction!) -> Void in
            print("button3 end")
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    // 別画面(View Controller)に遷移する。
    @IBAction func button4(_ sender: UIButton) {
        performSegue(withIdentifier: "button4", sender: nil)
    }
    
    // ラベルに文字を表示させる。
    @IBAction func button5(_ sender: UIButton) {
        labelButton5.text = "ボタン５が押されました。"
    }
    
}

