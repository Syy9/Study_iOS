//
//  ViewController.swift
//  Study_iOS
//
//  Created by Syy on 2018/09/16.
//  Copyright © 2018年 syy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switch1: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let defaults = UserDefaults.standard
        let value = defaults.bool(forKey: "switchOn")
        switch1.setOn(value, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func OnValueChanged(_ sender: UISwitch) {
        let defaults = UserDefaults.standard
        defaults.set(sender.isOn, forKey: "switchOn")
    }
}

