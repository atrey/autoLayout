//
//  OnOffView.swift
//  AutoLayout
//
//  Created by Praženica Andrej on 31/03/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import Foundation
import UIKit


class OnOffView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        
        let labelOnOff = UILabel()
        labelOnOff.text = "Change visibility with radio buttons"
        self.addSubview(labelOnOff)
        
        labelOnOff.snp_makeConstraints { (make) in
            make.top.equalTo(20)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            }
        // radio buttons
        let firstRadioButton = UISwitch()
        self.addSubview(firstRadioButton)
        
        firstRadioButton.snp_makeConstraints { (make) in
            make.top.equalTo(labelOnOff.snp_bottom).offset(20)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
        }
        
    }
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}