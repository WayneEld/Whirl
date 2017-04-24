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
        // Do any additional setup after loading the view, typically from a nib.//
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)

        let activityIndicator = Indicate(indicatorType: .labrinth)
        activityIndicator.startIndicator()
        
        
        
       let when = DispatchTime.now() + 2 // change 2 to desired number of seconds
        DispatchQueue.main.asyncAfter(deadline: when) {
            //activityIndicator.stopIndicator()
            activityIndicator.stopIndicatorAndFade(1)
        }
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    func drawBackDrop(){
    
    let backDropView = UIView()
        let backDropSize = self.labSize * 2.2
        backDropView.frame = CGRect(x: self.view.frame.size.width/2 - ((backDropSize)/2), y: self.view.frame.size.height/2 - ((backDropSize)/2), width: (backDropSize), height: (backDropSize))
        backDropView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
        
        backDropView.layer.borderWidth = 1
        backDropView.layer.masksToBounds = false
        backDropView.layer.borderColor = UIColor.lightGray.cgColor
        backDropView.layer.cornerRadius = backDropView.frame.height/2
        backDropView.clipsToBounds = true
        
        
        self.view.addSubview(backDropView)
        
    
    }

    func drawLab(percentage: Double, size: CGFloat,  duration: Double){

        let percentCircle = percentage
        let circleCenter = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2)
        let circleRadius = size
        let startAngle = CGFloat(0)

        let endAngle = CGFloat((M_PI * 2 * percentCircle))

         let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle:endAngle, clockwise: true)

        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = self.lineColor
        shapeLayer.lineWidth = self.lineWidth

        shapeLayer.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer.bounds =  shapeLayer.frame
        self.view.layer.addSublayer(shapeLayer)
        
        let rotationAnimation: CAAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation.z")
            animation.fromValue = startAngle
            animation.toValue = Float.pi * 2
            animation.duration = duration
            animation.repeatCount = Float.infinity
            return animation
        }()
        
        shapeLayer.add(rotationAnimation, forKey: "rotation")
        

    
    }
    
    func drawLab1(size: CGFloat,  duration: Double){
        
        let circleCenter = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2)
        let circleRadius = size
        let startAngle = CGFloat(0)
        let endAngle = CGFloat(Float.pi/2)
        
        let startAngle2 = CGFloat((Float.pi * 2)/3)
        let endAngle2 = CGFloat((Float.pi * 3)/4)
        
        let startAngle3 = CGFloat((Float.pi * 5)/6)
        let endAngle3 = CGFloat((Float.pi * 3)/2)
        
        let startAngle4 = CGFloat((Float.pi * 5)/3)
        let endAngle4 = CGFloat((Float.pi * 11)/6)
        
        
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle:endAngle, clockwise: true)
        
          let circlePath2 = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle2, endAngle:endAngle2, clockwise: true)
        
         let circlePath3 = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle3, endAngle:endAngle3, clockwise: true)
        
          let circlePath4 = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle4, endAngle:endAngle4, clockwise: true)
        
        
        
        //--Shape 1
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath

        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = self.lineColor
        shapeLayer.lineWidth = self.lineWidth
        
        shapeLayer.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer.bounds =  shapeLayer.frame
        self.view.layer.addSublayer(shapeLayer)
        
        
        //--Shape 2
        let shapeLayer2 = CAShapeLayer()
        shapeLayer2.path = circlePath2.cgPath
        
        
        shapeLayer2.fillColor = UIColor.clear.cgColor
        shapeLayer2.strokeColor = self.lineColor
        shapeLayer2.lineWidth = self.lineWidth
        
        shapeLayer2.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer2.bounds =  shapeLayer2.frame
        self.view.layer.addSublayer(shapeLayer2)
        
        //--Shape 3
        let shapeLayer3 = CAShapeLayer()
        shapeLayer3.path = circlePath3.cgPath
        
        
        shapeLayer3.fillColor = UIColor.clear.cgColor
        shapeLayer3.strokeColor = self.lineColor
        shapeLayer3.lineWidth = self.lineWidth
        
        shapeLayer3.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer3.bounds =  shapeLayer3.frame
        self.view.layer.addSublayer(shapeLayer3)
        
        //--Shape 4
        let shapeLayer4 = CAShapeLayer()
        shapeLayer4.path = circlePath4.cgPath
        
        
        shapeLayer4.fillColor = UIColor.clear.cgColor
        shapeLayer4.strokeColor = self.lineColor
        shapeLayer4.lineWidth = self.lineWidth
        
        shapeLayer4.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer4.bounds =  shapeLayer4.frame
        self.view.layer.addSublayer(shapeLayer4)
        
        
        let rotationAnimation: CAAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation.z")
            animation.fromValue = startAngle
            animation.toValue = Float.pi * 2
            animation.duration = duration
            animation.repeatCount = Float.infinity
            return animation
        }()
        
        shapeLayer.add(rotationAnimation, forKey: "rotation")
         shapeLayer2.add(rotationAnimation, forKey: "rotation")
         shapeLayer3.add(rotationAnimation, forKey: "rotation")
         shapeLayer4.add(rotationAnimation, forKey: "rotation")
        
    }
    
    func drawLab2(size: CGFloat,  duration: Double){
        
        let circleCenter = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2)
        let circleRadius = size
        let startAngle = CGFloat((Float.pi * 11)/6)
        let endAngle = CGFloat((Float.pi )/6)
        
        let startAngle2 = CGFloat((Float.pi)/4)
        let endAngle2 = CGFloat((Float.pi )/3)
        
        let startAngle3 = CGFloat((Float.pi )/2)
        let endAngle3 = CGFloat((Float.pi * 2)/3)
        
        let startAngle4 = CGFloat((Float.pi * 3)/4)
        let endAngle4 = CGFloat((Float.pi * 5)/4)
        
        let startAngle5 = CGFloat((Float.pi * 4)/3)
        let endAngle5 = CGFloat((Float.pi * 7)/4)
        
        
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle:endAngle, clockwise: true)
        
        let circlePath2 = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle2, endAngle:endAngle2, clockwise: true)
        
        let circlePath3 = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle3, endAngle:endAngle3, clockwise: true)
        
        let circlePath4 = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle4, endAngle:endAngle4, clockwise: true)
        
                let circlePath5 = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle5, endAngle:endAngle5, clockwise: true)
        
        
        
        //--Shape 1
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = self.lineColor
        shapeLayer.lineWidth = self.lineWidth
        
        shapeLayer.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer.bounds =  shapeLayer.frame
        self.view.layer.addSublayer(shapeLayer)
        
        
        //--Shape 2
        let shapeLayer2 = CAShapeLayer()
        shapeLayer2.path = circlePath2.cgPath
        
        
        shapeLayer2.fillColor = UIColor.clear.cgColor
        shapeLayer2.strokeColor = self.lineColor
        shapeLayer2.lineWidth = self.lineWidth
        
        shapeLayer2.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer2.bounds =  shapeLayer2.frame
        self.view.layer.addSublayer(shapeLayer2)
        
        //--Shape 3
        let shapeLayer3 = CAShapeLayer()
        shapeLayer3.path = circlePath3.cgPath
        
        
        shapeLayer3.fillColor = UIColor.clear.cgColor
        shapeLayer3.strokeColor = self.lineColor
        shapeLayer3.lineWidth = self.lineWidth
        
        shapeLayer3.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer3.bounds =  shapeLayer3.frame
        self.view.layer.addSublayer(shapeLayer3)
        
        //--Shape 4
        let shapeLayer4 = CAShapeLayer()
        shapeLayer4.path = circlePath4.cgPath
        
        
        shapeLayer4.fillColor = UIColor.clear.cgColor
        shapeLayer4.strokeColor = self.lineColor
        shapeLayer4.lineWidth = self.lineWidth
        
        shapeLayer4.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer4.bounds =  shapeLayer4.frame
        self.view.layer.addSublayer(shapeLayer4)
        
        //--Shape 5
        let shapeLayer5 = CAShapeLayer()
        shapeLayer5.path = circlePath5.cgPath

        shapeLayer5.fillColor = UIColor.clear.cgColor
        shapeLayer5.strokeColor = self.lineColor
        shapeLayer5.lineWidth = self.lineWidth
        
        shapeLayer5.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer5.bounds =  shapeLayer5.frame
        self.view.layer.addSublayer(shapeLayer5)
        
        
        let rotationAnimation: CAAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation.z")
            animation.fromValue = startAngle
            animation.toValue = startAngle + CGFloat((Float.pi * 2))
            animation.duration = duration
            animation.repeatCount = Float.infinity
            return animation
        }()
        
 
        
         shapeLayer.add(rotationAnimation, forKey: nil)
         shapeLayer2.add(rotationAnimation, forKey: nil)
         shapeLayer3.add(rotationAnimation, forKey: nil)
        shapeLayer4.add(rotationAnimation, forKey: nil)
        shapeLayer5.add(rotationAnimation, forKey: nil)
        
    }
*/

}

