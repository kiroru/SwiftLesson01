//
//  ViewController.swift
//  SwiftLesson01
//
//  Created by ueda on 2018/08/21.
//  Copyright © 2018年 kohei.ueda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button5Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //ログを表示する。
    @IBAction func button1(_ sender: UIButton) {
        print("ボタン１が押されました")
    }
    
    //アラートを表示する。
    @IBAction func button2(_ sender: UIButton) {
        let alertButton2: UIAlertController = UIAlertController(title: "タイトル", message: "ボタン２が押されました", preferredStyle: UIAlertControllerStyle.alert)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:{
            (action: UIAlertAction!) -> Void in
            print("button2 end")
        })
        alertButton2.addAction(defaultAction)
        present(alertButton2, animated: true, completion: nil)
    }
    
    //アクションシートを表示する。
    @IBAction func button3(_ sender: UIButton) {
        let alertButton3: UIAlertController = UIAlertController(title: "タイトル", message: "ボタン３が押されました", preferredStyle:UIAlertControllerStyle.actionSheet)
        let defaultAction: UIAlertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:{
            (action: UIAlertAction!) -> Void in
            print("button3 end")
        })
        alertButton3.addAction(defaultAction)
        present(alertButton3, animated: true, completion: nil)
    }
    
    //別画面(View Controller)に遷移する。
    @IBAction func button4(_ sender: UIButton) {
        self.performSegue(withIdentifier: "button4", sender: nil)
    }
    
    
    //ラベルに文字を表示させる。
    @IBAction func button5(_ sender: UIButton) {
        button5Label.text = "ボタン５が押されました。"
    }
    
}

