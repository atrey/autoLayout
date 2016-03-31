//
//  ViewController.swift
//  AutoLayout
//
//  Created by Praženica Andrej on 30/03/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    
    var dataView : DataView!
    weak var sliderView : SliderView!
    weak var segmenterView : SegmenterView!
    weak var onOffView : OnOffView!
    
    override func loadView() {
        self.view = UIView()
        
        // dataview
        let dv = DataView()
        self.view.addSubview(dv)
        self.dataView = dv
        
        
        dv.snp_makeConstraints{ make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(100)
            make.top.equalTo(84)
            
        }
        
        //slider view
        
        let slv = SliderView()
        self.view.addSubview(slv)
        self.sliderView = slv
        
        slv.snp_makeConstraints{ make in
            
            make.leading.equalTo(dv)
            make.trailing.equalTo(dv)
            make.height.equalTo(100)
            make.top.equalTo(dv.snp_bottom).offset(20)
            
        }
        
        //segmenterview
        
        let sev = SegmenterView()
        self.view.addSubview(sev)
        self.segmenterView = sev
        
        sev.snp_makeConstraints { make in
            make.leading.equalTo(slv)
            make.trailing.equalTo(slv)
            make.height.equalTo(100)
            make.top.equalTo(slv.snp_bottom).offset(20)
            
        }
        
        
//        //on off
//        let oov = OnOffView()
//        self.view.addSubview(oov)
//        self.onOffView = oov
//        
//        oov.snp_makeConstraints { (make) in
//            make.leading.equalTo(sev)
//            make.trailing.equalTo(sev)
//            make.height.equalTo(200)
//            make.top.equalTo(sev.snp_bottom).offset(20)
//        }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        //self.navigationController?.setNavigationBarHidden(true, animated: false)


        view.backgroundColor = UIColor(red: 236/255.0, green: 240/255.0, blue: 241/255.0, alpha: 1.0)
 
    }

 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

