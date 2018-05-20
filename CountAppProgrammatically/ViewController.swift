//
//  ViewController.swift
//  CountAppProgrammatically
//
//  Created by Ken Sayama on 2018/05/19.
//  Copyright © 2018年 Ken Sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //let mainView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "CountAppProgramatically"
        
        // BaseView.swiftを作成
        //let baseView = BaseView(frame: self.view.bounds)
        let mainView = MainView(frame: self.view.bounds)
        
        // 自動でリサイズしてくれる設定
        mainView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        self.view.addSubview(mainView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

