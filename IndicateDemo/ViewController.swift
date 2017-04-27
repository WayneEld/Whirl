//
//  ViewController.swift
//  IndicateDemo
//
//  Created by Wayne Eldridge on 2017/04/27.
//  Copyright © 2017 Wayne Eldridge. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        
        
        let activityIndicator = Indicate(indicatorType: .normal)
        activityIndicator.startIndicator()
        
        
        
        let when = DispatchTime.now() + 2 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
            activityIndicator.stopIndicator()
        }
        
        
    }
        
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

