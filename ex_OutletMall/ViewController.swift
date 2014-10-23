//
//  ViewController.swift
//  ex_OutletMall
//
//  Created by yukichi on 2014/10/23.
//  Copyright (c) 2014年 yukichi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MyText: UITextField!
    @IBOutlet weak var LabelChan: UILabel!
    @IBOutlet weak var WataSliderVolume: UILabel!
    @IBOutlet weak var WataSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // テキストボックスに
        self.MyText.text = "マンハッタナー"
        self.MyText.textColor = UIColor.purpleColor()
        
        var ima = self.getDate()
        self.LabelChan.text = "日時： \(ima)"
        self.LabelChan.textColor = UIColor.purpleColor()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateValue(sender: UISlider) {
        
        //var level = String(self.WataSlider.value * 100)
        //self.LabelChan.text = level
        var level = String(Int(self.WataSlider.value * 10000 / 100))
        //print(level)
        self.WataSliderVolume.text = level
        
    }
    func getDate()->NSString {
        let now = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US") // ロケールの設定
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss" // 日付フォーマットの設定
        
        //println(dateFormatter.stringFromDate(now)) // -> 2014/06/25 02:13:18
        var thisDate = dateFormatter.stringFromDate(now)
        return thisDate
    }
}

