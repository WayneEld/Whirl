//
//  ViewController.swift
//  Indicate
//
//  Created by Wayne Eldridge on 2017/03/17.
//  Copyright © 2017 Wayne Eldridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activityImg1 = UIImageView()
    var activityImg2 = UIImageView()
    var activityImg3 = UIImageView()
    var activityImg4 = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        let acivitySize = CGFloat(200)
        
        //--Image Activity 1
        let imgActivity1 = UIImage(named: "img_ic_activity_1")
        let imageViewActivity1 = UIImageView(image: imgActivity1!)
        let imgActivityHeight1 = acivitySize
        imageViewActivity1.frame = CGRect(x: (self.view.frame.size.width/2) - (imgActivityHeight1/2), y: (self.view.frame.size.height/2) - (imgActivityHeight1/2), width: imgActivityHeight1 , height: imgActivityHeight1)
        
        //--Image Activity 2
        let imgActivity2 = UIImage(named: "img_ic_activity_2")
        let imageViewActivity2 = UIImageView(image: imgActivity2!)
        let imgActivityHeight2 = acivitySize - (acivitySize * 0.1)
        imageViewActivity2.frame = CGRect(x: (self.view.frame.size.width/2) - (imgActivityHeight2/2), y: (self.view.frame.size.height/2) - (imgActivityHeight2/2), width: imgActivityHeight2 , height: imgActivityHeight2)
        
        //--Image Activity 3
        let imgActivity3 = UIImage(named: "img_ic_activity_3")
        let imageViewActivity3 = UIImageView(image: imgActivity3!)
        let imgActivityHeight3 = acivitySize - (acivitySize * 0.2)
        imageViewActivity3.frame = CGRect(x: (self.view.frame.size.width/2) - (imgActivityHeight3/2), y: (self.view.frame.size.height/2) - (imgActivityHeight3/2), width: imgActivityHeight3 , height: imgActivityHeight3)
        
        //--Image Activity 3
        let imgActivity4 = UIImage(named: "img_ic_activity_4")
        let imageViewActivity4 = UIImageView(image: imgActivity4!)
        let imgActivityHeight4 = acivitySize - (acivitySize * 0.3)
        imageViewActivity4.frame = CGRect(x: (self.view.frame.size.width/2) - (imgActivityHeight4/2), y: (self.view.frame.size.height/2) - (imgActivityHeight4/2), width: imgActivityHeight4 , height: imgActivityHeight4)
        
        
     
        self.activityImg1 = imageViewActivity1
        self.activityImg2 = imageViewActivity2
        self.activityImg3 = imageViewActivity3
        self.activityImg4 = imageViewActivity4
        
        view.addSubview(activityImg1)
        view.addSubview(activityImg2)
        view.addSubview(activityImg3)
        view.addSubview(activityImg4)
        
        
        roatateOnce()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func roatateOnce(){
        UIView.animate(withDuration: 2, delay: 0, options: .curveLinear, animations: {() -> Void in
            self.activityImg1.transform = self.activityImg1.transform.rotated(by: CGFloat(M_PI_2) * 2)
           //self.activityImg1.transform = self.activityImg1.transform.scaledBy(x: 1.5, y: 1.5)
            
            self.activityImg2.transform = self.activityImg2.transform.rotated(by: CGFloat(M_PI_2) * 1)
            self.activityImg3.transform = self.activityImg3.transform.rotated(by: CGFloat(M_PI_2) * 0.5)
            self.activityImg4.transform = self.activityImg4.transform.rotated(by: CGFloat(M_PI_2) * 3)
           // self.activityImg2.transform = self.activityImg2.transform.scaledBy(x: 1.2, y: 1.2)
            
        }, completion: { finished in
        self.rotateBack()
        
        })
        
        
        
    }
    
    
    func rotateBack() {
    
        
        UIView.animate(withDuration: 2, delay: 0, options: .curveLinear, animations: {() -> Void in
            self.activityImg1.transform = self.activityImg1.transform.rotated(by: CGFloat(M_PI_2) * 2)
          //  self.activityImg1.transform = self.activityImg1.transform.scaledBy(x: 1/1.5, y: 1/1.5)
            
            self.activityImg2.transform = self.activityImg2.transform.rotated(by: CGFloat(M_PI_2) * 1)
            self.activityImg3.transform = self.activityImg3.transform.rotated(by: CGFloat(M_PI_2) * 0.5)
            self.activityImg4.transform = self.activityImg4.transform.rotated(by: CGFloat(M_PI_2) * 3)
           // self.activityImg2.transform = self.activityImg2.transform.scaledBy(x: 1/1.2, y: 1/1.2)
            
        }, completion: { finished in
            self.roatateOnce()
            
        })
    
    
    }



}

