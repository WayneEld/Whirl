//
//  ViewController.swift
//  Indicate
//
//  Created by Wayne Eldridge on 2017/03/17.
//  Copyright © 2017 Wayne Eldridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let lineWidth = CGFloat(1)
    let lineColor = UIColor.black.cgColor
    let labSize = CGFloat(30)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        let activityIndicator = Indicate(indicatorType: .labrinth)
        activityIndicator.startIndicator()
        
        
        
       let when = DispatchTime.now() + 2 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
          //  activityIndicator.stopIndicator()
        }
 
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

