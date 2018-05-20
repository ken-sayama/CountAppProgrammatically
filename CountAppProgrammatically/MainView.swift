//
//  MainView.swift
//  CountAppProgrammatically
//
//  Created by Ken Sayama on 2018/05/19.
//  Copyright © 2018年 Ken Sayama. All rights reserved.
//

import UIKit

class MainView: UIView {

    let numberLabel = UILabel()
    let plusBtn = UIButton()
    let minusBtn = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(numberLabel)
        addSubview(plusBtn)
        addSubview(minusBtn)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let labelSize = self.numberLabel.sizeThatFits(self.bounds.size)
        let x = (self.bounds.width - labelSize.width) / 2
        let y = (self.bounds.height - labelSize.height) / 3
        let labelOrigin = CGPoint(x: x, y: y)
        
        numberLabel.frame = CGRect(origin: labelOrigin, size: labelSize)
        numberLabel.textColor = .black
        numberLabel.text = "0"
        numberLabel.font = UIFont.systemFont(ofSize: 30)
        numberLabel.textAlignment = .center
        
        plusBtn.frame = CGRect(x: bounds.width - 170, y: numberLabel.frame.maxY + 50, width: 150, height: 150)
        plusBtn.setTitle("Plus", for: .normal)
        plusBtn.layer.cornerRadius = 75.0
        plusBtn.backgroundColor = .blue
        
        minusBtn.frame = CGRect(x: bounds.origin.x + 20, y: numberLabel.frame.maxY + 50, width: 150, height: 150)
        minusBtn.setTitle("Minus", for: .normal)
        minusBtn.layer.cornerRadius = 75.0
        minusBtn.backgroundColor = .red
    }
    
}
