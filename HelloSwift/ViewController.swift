//
//  ViewController.swift
//  HelloSwift
//
//  Created by Private on 2017/12/09.
//  Copyright © 2017年 鵜巷. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var toggleLabelText: Bool = false
    var defaultLabelText: String? = ""
    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.defaultLabelText = self.myLabel.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        var text: String?
        if self.toggleLabelText == true {
            text = self.defaultLabelText
        }
        else {
            let locale = Locale(identifier: "ja_JP")
            let fmt = DateFormatter()
            fmt.locale = locale
            fmt.timeStyle = .none
            fmt.dateStyle = .long
            
            let now = Date()
            text = fmt.string(from: now)
        }
        self.myLabel.text = text
        self.toggleLabelText = !self.toggleLabelText
    }

}

