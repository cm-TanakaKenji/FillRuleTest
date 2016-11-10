//
//  ViewController.swift
//  FillRuleTest
//
//  Created by tanaka.kenji on 2016/11/10.
//  Copyright © 2016年 tanaka.kenji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lowerView = UIView(frame: CGRect(x: 20, y: 40, width: 100, height: 100))
        lowerView.backgroundColor = UIColor.cyanColor()
        view.addSubview(lowerView)
        
        let upperView = HollowView(frame: CGRect(x: 40, y: 60, width: 300, height: 300))
        upperView.backgroundColor = UIColor.orangeColor()
        view.addSubview(upperView)
        
    }

}

