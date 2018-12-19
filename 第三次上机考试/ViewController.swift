//
//  ViewController.swift
//  第三次上机考试
//
//  Created by student on 2018/12/19.
//  Copyright © 2018年 2016110305. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var text2: UITextField!
    var add1 : Double = 0.00
    var add2 : Double = 0.00
    var resultDouble : Double = 0.00
    var history : [String] = []
    let userDefault = UserDefaults.standard
    
    @IBAction func arith(_ sender: Any) {
        add1 = Double(text1.text!)!
        add2 = Double(text2.text!)!
        resultDouble = add1 + add2
        result.text = "\(resultDouble)"
        history.append("\(add1)"+" add "+"\(add2)"+" = "+"\(resultDouble)")
    }
    override func viewWillAppear(_ animated: Bool) {
        //history = userDefault.stringArray(forKey: "history")

    }
    override func viewWillDisappear(_ animated: Bool) {
        //userDefault.set(history, forKey: "history")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        text1.delegate = self
        text2.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Show" {
            let secVc = segue.destination as! HistoryTableViewController
            secVc.myHistory = history
            print(history)
        }
    }

}

