//
//  ViewController.swift
//  SwiftLesson01
//
//  Created by ueda on 2018/08/21.
//  Copyright © 2018年 kohei.ueda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // ログを表示する。
    @IBAction func pressedLogButton(_ sender: UIButton) {
        print("pressed Button1")
    }
    
    // アラートを表示する。
    @IBAction func pressedAlertButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "タイトル",
                                      message: "ボタン２が押されました",
                                      preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action: UIAlertAction!) -> Void in
            print("pressed OK")
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    // アクションシートを表示する。
    @IBAction func pressedActionSheetButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "タイトル",
                                      message: "ボタン３が押されました",
                                      preferredStyle:UIAlertControllerStyle.actionSheet)
        let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action: UIAlertAction!) -> Void in
            print("pressed OK")
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    // 別画面(View Controller)に遷移する。
    @IBAction func pressedSegueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "button4", sender: nil)
    }
    
    // ラベルに文字を表示させる。
    @IBAction func pressedEditLabelButton(_ sender: UIButton) {
        textLabel.text = "ボタン５が押されました"
    }
    
}

