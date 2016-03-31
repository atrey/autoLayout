//
//  DataView.swift
//  AutoLayout
//
//  Created by Praženica Andrej on 31/03/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class DataView : UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
        
        let dataLabel = UILabel()
        dataLabel.text = "Toto je test labelu"
        self.addSubview(dataLabel)
        
        
        dataLabel.snp_makeConstraints { (make) in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.top.equalTo(10)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}