//
//  DemoViewController.swift
//  Indicate
//
//  Created by Wayne Eldridge on 2017/05/22.
//  Copyright © 2017 Wayne Eldridge. All rights reserved.
//

import UIKit
//--Import Whirl into your personal projects.
//import Whirl


class DemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let indicator = Indicate(indicatorType: .labyrinth)
        indicator.startIndicator()
        
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
