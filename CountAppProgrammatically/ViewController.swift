//
//  ViewController.swift
//  CountAppProgrammatically
//
//  Created by Ken Sayama on 2018/05/19.
//  Copyright © 2018年 Ken Sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "CountAppProgramatically"
        
        mainView.frame = self.view.bounds
        
        mainView.delegate = self
        
        // 自動でリサイズしてくれる設定
        mainView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.view.addSubview(mainView)
    }
}

extension ViewController: MainViewDelegate {
    func mainViewOnClickPlus() {
        let str = mainView.numberLabel.text!
        let num = Int(str)! + 1
        
        mainView.numberLabel.text = String(num)
    }
    
    func mainViewOnClickMinus() {
        let str = mainView.numberLabel.text!
        let num = Int(str)! - 1
        
        mainView.numberLabel.text = String(num)
    }
}

