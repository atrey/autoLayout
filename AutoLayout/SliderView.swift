//
//  SliderView.swift
//  AutoLayout
//
//  Created by Praženica Andrej on 31/03/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import Foundation
import UIKit


class SliderView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        
        let labelSlider = UILabel()
        labelSlider.text = "Set up new value with slider."
        self.addSubview(labelSlider)
        
        
        labelSlider.snp_makeConstraints { (make) in
            make.top.equalTo(20)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
        }
        
        let slider = UISlider()
        self.addSubview(slider)
        
        slider.value = 40
        slider.minimumValue = 0
        slider.maximumValue = 100
        
        
        slider.snp_makeConstraints { (make) in
            make.top.equalTo(labelSlider.snp_bottom).offset(20)
            make.leading.equalTo(labelSlider)
            make.trailing.equalTo(labelSlider)
        }
    }
    
    
    
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}