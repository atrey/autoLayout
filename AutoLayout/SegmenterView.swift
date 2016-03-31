//
//  SegmenterView.swift
//  AutoLayout
//
//  Created by Praženica Andrej on 31/03/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import Foundation
import UIKit

class SegmenterView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        
        let labelSegmenter = UILabel()
        labelSegmenter.text = "Set value with segmenter"
        self.addSubview(labelSegmenter)
        
        labelSegmenter.snp_makeConstraints { (make) in
            make.top.equalTo(20)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
        }
        
        let items = ["One", "Two", "Three"]
        
        let segmenter = UISegmentedControl(items: items)
        segmenter.selectedSegmentIndex = 0
        
        self.addSubview(segmenter)
        
        segmenter.snp_makeConstraints { (make) in
            make.top.equalTo(labelSegmenter.snp_bottom).offset(20)
            make.leading.equalTo(labelSegmenter)
            make.trailing.equalTo(labelSegmenter)
            
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}