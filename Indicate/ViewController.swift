//
//  ViewController.swift
//  Indicate
//
//  Created by Wayne Eldridge on 2017/03/17.
//  Copyright © 2017 Wayne Eldridge. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    var activityImg1 = UIImageView()
    var activityImg2 = UIImageView()
    var activityImg3 = UIImageView()
    var activityImg4 = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.//
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
        
        drawCircle()
        
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
    
    
    
    func drawCircle(){
    
        let percentCircle = 0.75
        let circleCenter = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2)
        let circleRadius = CGFloat(150)
        let startAngle = CGFloat(0)
        let endAngle = CGFloat((M_PI * 2 * percentCircle))
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle:endAngle, clockwise: true)
        

        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        //change the fill color
        shapeLayer.fillColor = UIColor.clear.cgColor
        //you can change the stroke color
        shapeLayer.strokeColor = UIColor.red.cgColor
        //you can change the line width
        shapeLayer.lineWidth = 2.0
        //shapeLayer.backgroundColor = UIColor.orange.cgColor
        let shapeWidth = shapeLayer.path!.boundingBoxOfPath.width
        let shapeHeight = shapeLayer.path!.boundingBoxOfPath.height
        shapeLayer.frame = CGRect(x: (self.view.frame.size.width/2) - (shapeWidth/2), y: (self.view.frame.size.height/2) - (shapeHeight)/2, width: shapeLayer.path!.boundingBoxOfPath.width, height: shapeLayer.path!.boundingBoxOfPath.height)
        
        //let screenCenter = CGRect(x: self.view.bounds.size.width/2, y: self.view.bounds.size.height/2, width: 100, height: 100)
        shapeLayer.bounds = shapeLayer.path!.boundingBoxOfPath
        //shapeLayer.bounds = CGRect(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2, width: (shapeLayer.path?.boundingBoxOfPath.width)!, height: (shapeLayer.path?.boundingBoxOfPath.height)!)
        self.view.layer.addSublayer(shapeLayer)

        
        /*
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI * 2.0)
        rotateAnimation.duration = 1.0
        rotateAnimation.repeatCount = Float.infinity
        shapeLayer.add(rotateAnimation, forKey: nil)
        */
        
       // CATransform3D current = myLayer.transform;
   
        
        let rotationAnimation: CAAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation.z")
            animation.fromValue = 0
            animation.toValue = M_PI * 2
            animation.duration = 4
            animation.repeatCount = MAXFLOAT
            return animation
        }()
        
        shapeLayer.add(rotationAnimation, forKey: "rotation")
        
        /*
        shapeLayer.strokeEnd = (CGFloat(M_PI * 2 * percentCircle))
        // Then apply the animation.
        var drawAnimation = CABasicAnimation(keyPath: "transform.rotation.x")
        drawAnimation.duration = 10
        drawAnimation.fromValue = CGPoint(x: 0, y: 0)
        drawAnimation.toValue = CGPoint(x: 100, y: 100)
        drawAnimation.repeatCount = Float.infinity
        //drawAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        shapeLayer.add(drawAnimation, forKey: nil)
    */
/*
 
        let spinAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        //spinAnimation.byValue = 1//Int(2.0 * .pi)
  
        spinAnimation.toValue = M_PI_2
        spinAnimation.duration = 4
        spinAnimation.repeatCount = .infinity
        shapeLayer.add(spinAnimation, forKey: "indeterminateAnimation")
 
 
 */
 
        /*
        UIView.animate(withDuration: 2, delay: 3, options: .curveLinear, animations: {() -> Void in
            var myRotationTransform: CATransform3D = CATransform3DRotate(shapeLayer.transform, (CGFloat(M_PI_2) * 0.85),     //experiment with flatness
                1.0,     // rotate only across the x-axis
                0.0,     // no y-axis transform
                0.0)
            //  no z-axis transform
            shapeLayer.transform = myRotationTransform
        }, completion: nil)
*/
        
        /*
        let start = CGPoint(x: 100, y: 100)
        let middle = CGPoint(x: 450, y: 380)
        let end = CGPoint(x: 200, y: 200)
        
        var path = UIBezierPath()
        path.move(to: start)
       path.addLine(to: middle)
        path.addLine(to: end)
        
        //design path in layer
        var shapeLayerr = CAShapeLayer()
        shapeLayerr.path = path.cgPath
        shapeLayerr.strokeColor = UIColor.orange.cgColor
        shapeLayerr.fillColor = UIColor.blue.cgColor
        shapeLayerr.lineWidth = 3
        
        view.layer.addSublayer(shapeLayerr)
 */
 
    }
    
    
 


}

