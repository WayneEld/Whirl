//
//  LabrinthIndicator.swift
//  Indicate
//
//  Created by Wayne Eldridge on 2017/03/24.
//  Copyright © 2017 Wayne Eldridge. All rights reserved.
//

import Foundation
import UIKit

class LabIndicator {
    
    static let lineWidth = CGFloat(1)
    static let lineColor = UIColor.black.cgColor
    static let labSize = CGFloat(30)
    static let currentView = UIApplication.shared.windows[0].rootViewController
    static let drawDuration = CFTimeInterval(0)
    
    static var backDrop = UIView()
    static var circle1 = CAShapeLayer()
    static var circle2 = CAShapeLayer()
    
    struct Circle3 {
      static var circle3_1 = CAShapeLayer()
        static var circle3_2 = CAShapeLayer()
        static var circle3_3 = CAShapeLayer()
        static var circle3_4 = CAShapeLayer()
    }
    
    struct Circle4 {
        static var circle4_1 = CAShapeLayer()
        static var circle4_2 = CAShapeLayer()
        static var circle4_3 = CAShapeLayer()
        static var circle4_4 = CAShapeLayer()
        static var circle4_5 = CAShapeLayer()
    }

    public func showIndicator(){
    
        drawBackDrop()
        drawLab1(percentage: 0.95, size: LabIndicator.labSize, duration: 5)
        drawLab2(percentage: 0.75, size: LabIndicator.labSize * 0.8, duration: 3)
        drawLab3(size: LabIndicator.labSize * 0.6, duration: 3.5)
        drawLab4(size: LabIndicator.labSize * 0.4, duration: 4)
    
    
    }
    
    public func hideIndicator(){
    
        LabIndicator.backDrop.removeFromSuperview()
        LabIndicator.circle1.removeFromSuperlayer()
        LabIndicator.circle2.removeFromSuperlayer()
        
        //-Circle 3
        LabIndicator.Circle3.circle3_1.removeFromSuperlayer()
        LabIndicator.Circle3.circle3_2.removeFromSuperlayer()
        LabIndicator.Circle3.circle3_3.removeFromSuperlayer()
        LabIndicator.Circle3.circle3_4.removeFromSuperlayer()
        
        //--Circle 4
         LabIndicator.Circle4.circle4_1.removeFromSuperlayer()
        LabIndicator.Circle4.circle4_2.removeFromSuperlayer()
        LabIndicator.Circle4.circle4_3.removeFromSuperlayer()
        LabIndicator.Circle4.circle4_4.removeFromSuperlayer()
        LabIndicator.Circle4.circle4_5.removeFromSuperlayer()
    
    }
    
    
    func drawBackDrop(){
        
        
        let backDropView = UIView()
        let backDropSize = LabIndicator.labSize * 2.2
        backDropView.frame = CGRect(x: (LabIndicator.currentView?.view.frame.size.width)!/2 - ((backDropSize)/2), y: (LabIndicator.currentView?.view.frame.size.height)!/2 - ((backDropSize)/2), width: (backDropSize), height: (backDropSize))
        backDropView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
        
        backDropView.layer.borderWidth = 1
        backDropView.layer.masksToBounds = false
        backDropView.layer.borderColor = UIColor.lightGray.cgColor
        backDropView.layer.cornerRadius = backDropView.frame.height/2
        backDropView.clipsToBounds = true
        
        
        LabIndicator.currentView?.view.addSubview(backDropView)
        LabIndicator.backDrop = backDropView
        
        
    }
    
    func drawLab1(percentage: Double, size: CGFloat,  duration: Double){
        
        let percentCircle = percentage
        let circleCenter = CGPoint(x:  (LabIndicator.currentView?.view.frame.size.width)!/2, y:  (LabIndicator.currentView?.view.frame.size.height)!/2)
        let circleRadius = size
        let startAngle = CGFloat(0)
        
        let endAngle = CGFloat((M_PI * 2 * percentCircle))
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle:endAngle, clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = LabIndicator.lineColor
        shapeLayer.lineWidth = LabIndicator.lineWidth
        
        shapeLayer.frame = CGRect(x: ((LabIndicator.currentView?.view.frame.size.width)!/2) - (circleRadius/2), y: ((LabIndicator.currentView?.view.frame.size.height)!/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer.bounds =  shapeLayer.frame
        LabIndicator.currentView?.view.layer.addSublayer(shapeLayer)
        
        let rotationAnimation: CAAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation.z")
            animation.fromValue = startAngle
            animation.toValue = Float.pi * 2
            animation.duration = duration
            animation.repeatCount = Float.infinity
            return animation
        }()
        
        shapeLayer.add(rotationAnimation, forKey: "rotation")
        LabIndicator.circle1 = shapeLayer
        
        shapeLayer.strokeEnd = endAngle
        let drawAnimation = CABasicAnimation(keyPath: "strokeEnd")
        drawAnimation.duration = LabIndicator.drawDuration
        drawAnimation.fromValue = Int(startAngle)
        drawAnimation.toValue = Int(endAngle)
        drawAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        shapeLayer.add(drawAnimation, forKey: nil)
        
    }
    
    func drawLab2(percentage: Double, size: CGFloat,  duration: Double){
        
        let percentCircle = percentage
        let circleCenter = CGPoint(x:  (LabIndicator.currentView?.view.frame.size.width)!/2, y:  (LabIndicator.currentView?.view.frame.size.height)!/2)
        let circleRadius = size
        let startAngle = CGFloat(0)
        
        let endAngle = CGFloat((M_PI * 2 * percentCircle))
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle:endAngle, clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = LabIndicator.lineColor
        shapeLayer.lineWidth = LabIndicator.lineWidth
        
        shapeLayer.frame = CGRect(x: ((LabIndicator.currentView?.view.frame.size.width)!/2) - (circleRadius/2), y: ((LabIndicator.currentView?.view.frame.size.height)!/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer.bounds =  shapeLayer.frame
        LabIndicator.currentView?.view.layer.addSublayer(shapeLayer)
        
        let rotationAnimation: CAAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation.z")
            animation.fromValue = startAngle
            animation.toValue = Float.pi * 2
            animation.duration = duration
            animation.repeatCount = Float.infinity
            return animation
        }()
        
        shapeLayer.add(rotationAnimation, forKey: "rotation")
        LabIndicator.circle2 = shapeLayer
        
        shapeLayer.strokeEnd = endAngle
        let drawAnimation = CABasicAnimation(keyPath: "strokeEnd")
        drawAnimation.duration = LabIndicator.drawDuration
        drawAnimation.fromValue = Int(startAngle)
        drawAnimation.toValue = Int(endAngle)
        drawAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        shapeLayer.add(drawAnimation, forKey: nil)
        
    }
    
    func drawLab3(size: CGFloat,  duration: Double){
        
        let circleCenter = CGPoint(x: (LabIndicator.currentView?.view.frame.size.width)!/2, y: (LabIndicator.currentView?.view.frame.size.height)!/2)
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
        shapeLayer.strokeColor = LabIndicator.lineColor
        shapeLayer.lineWidth = LabIndicator.lineWidth
        
        shapeLayer.frame = CGRect(x: ((LabIndicator.currentView?.view.frame.size.width)!/2) - (circleRadius/2), y: ((LabIndicator.currentView?.view.frame.size.height)!/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer.bounds =  shapeLayer.frame
       LabIndicator.currentView?.view.layer.addSublayer(shapeLayer)
        
        
        //--Shape 2
        let shapeLayer2 = CAShapeLayer()
        shapeLayer2.path = circlePath2.cgPath
        
        
        shapeLayer2.fillColor = UIColor.clear.cgColor
        shapeLayer2.strokeColor = LabIndicator.lineColor
        shapeLayer2.lineWidth = LabIndicator.lineWidth
        
        shapeLayer2.frame = CGRect(x: ((LabIndicator.currentView?.view.frame.size.width)!/2) - (circleRadius/2), y: ((LabIndicator.currentView?.view.frame.size.height)!/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer2.bounds =  shapeLayer2.frame
        LabIndicator.currentView?.view.layer.addSublayer(shapeLayer2)
        
        //--Shape 3
        let shapeLayer3 = CAShapeLayer()
        shapeLayer3.path = circlePath3.cgPath
        
        
        shapeLayer3.fillColor = UIColor.clear.cgColor
        shapeLayer3.strokeColor = LabIndicator.lineColor
        shapeLayer3.lineWidth = LabIndicator.lineWidth
        
        shapeLayer3.frame = CGRect(x: ((LabIndicator.currentView?.view.frame.size.width)!/2) - (circleRadius/2), y: ((LabIndicator.currentView?.view.frame.size.height)!/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer3.bounds =  shapeLayer3.frame
        LabIndicator.currentView?.view.layer.addSublayer(shapeLayer3)
        
        //--Shape 4
        let shapeLayer4 = CAShapeLayer()
        shapeLayer4.path = circlePath4.cgPath
        
        
        shapeLayer4.fillColor = UIColor.clear.cgColor
        shapeLayer4.strokeColor = LabIndicator.lineColor
        shapeLayer4.lineWidth = LabIndicator.lineWidth
        
        shapeLayer4.frame = CGRect(x: ((LabIndicator.currentView?.view.frame.size.width)!/2) - (circleRadius/2), y: ((LabIndicator.currentView?.view.frame.size.height)!/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer4.bounds =  shapeLayer4.frame
       LabIndicator.currentView?.view.layer.addSublayer(shapeLayer4)
        
        
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
        
        
        LabIndicator.Circle3.circle3_1 = shapeLayer
        LabIndicator.Circle3.circle3_2 = shapeLayer2
        LabIndicator.Circle3.circle3_3 = shapeLayer3
        LabIndicator.Circle3.circle3_4 = shapeLayer4
        
        
        
        shapeLayer.strokeEnd = endAngle
        let drawAnimation = CABasicAnimation(keyPath: "strokeEnd")
        drawAnimation.duration = LabIndicator.drawDuration
        drawAnimation.fromValue = Int(startAngle)
        drawAnimation.toValue = Int(endAngle)
        drawAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        shapeLayer.add(drawAnimation, forKey: "1")
        
        
        
        shapeLayer2.strokeEnd = endAngle2
        let drawAnimation2 = CABasicAnimation(keyPath: "strokeEnd")
        drawAnimation2.duration = LabIndicator.drawDuration
        drawAnimation2.fromValue = Int(startAngle2)
        drawAnimation2.toValue = Int(endAngle2)
        drawAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        shapeLayer2.add(drawAnimation2, forKey: "2")
        
        
        /*
        shapeLayer3.strokeEnd = endAngle3
        let drawAnimation3 = CABasicAnimation(keyPath: "strokeEnd")
        drawAnimation3.duration = LabIndicator.drawDuration
        drawAnimation3.fromValue = Int(startAngle3)
        drawAnimation3.toValue = Int(endAngle3)
        drawAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        shapeLayer3.add(drawAnimation3, forKey: nil)
        */
        /*
        shapeLayer4.strokeEnd = endAngle4
        let drawAnimation4 = CABasicAnimation(keyPath: "strokeEnd")
        drawAnimation4.duration = LabIndicator.drawDuration
        drawAnimation4.fromValue = Int(startAngle4)
        drawAnimation4.toValue = Int(endAngle4)
        drawAnimation4.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        shapeLayer4.add(drawAnimation4, forKey: nil)
        */
        
    }
    
    func drawLab4(size: CGFloat,  duration: Double){
        
        let circleCenter = CGPoint(x: (LabIndicator.currentView?.view.frame.size.width)!/2, y: (LabIndicator.currentView?.view.frame.size.height)!/2)
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
        shapeLayer.strokeColor = LabIndicator.lineColor
        shapeLayer.lineWidth = LabIndicator.lineWidth
        
        shapeLayer.frame = CGRect(x: ((LabIndicator.currentView?.view.frame.size.width)!/2) - (circleRadius/2), y: ((LabIndicator.currentView?.view.frame.size.height)!/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer.bounds =  shapeLayer.frame
        LabIndicator.currentView?.view.layer.addSublayer(shapeLayer)
        
        
        //--Shape 2
        let shapeLayer2 = CAShapeLayer()
        shapeLayer2.path = circlePath2.cgPath
        
        
        shapeLayer2.fillColor = UIColor.clear.cgColor
        shapeLayer2.strokeColor = LabIndicator.lineColor
        shapeLayer2.lineWidth = LabIndicator.lineWidth
        
        shapeLayer2.frame = CGRect(x: ((LabIndicator.currentView?.view.frame.size.width)!/2) - (circleRadius/2), y: ((LabIndicator.currentView?.view.frame.size.height)!/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer2.bounds =  shapeLayer2.frame
        LabIndicator.currentView?.view.layer.addSublayer(shapeLayer2)
        
        //--Shape 3
        let shapeLayer3 = CAShapeLayer()
        shapeLayer3.path = circlePath3.cgPath
        
        
        shapeLayer3.fillColor = UIColor.clear.cgColor
        shapeLayer3.strokeColor = LabIndicator.lineColor
        shapeLayer3.lineWidth = LabIndicator.lineWidth
        
        shapeLayer3.frame = CGRect(x: ((LabIndicator.currentView?.view.frame.size.width)!/2) - (circleRadius/2), y: ((LabIndicator.currentView?.view.frame.size.height)!/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer3.bounds =  shapeLayer3.frame
        LabIndicator.currentView?.view.layer.addSublayer(shapeLayer3)
        
        //--Shape 4
        let shapeLayer4 = CAShapeLayer()
        shapeLayer4.path = circlePath4.cgPath
        
        
        shapeLayer4.fillColor = UIColor.clear.cgColor
        shapeLayer4.strokeColor = LabIndicator.lineColor
        shapeLayer4.lineWidth = LabIndicator.lineWidth
        
        shapeLayer4.frame = CGRect(x: ((LabIndicator.currentView?.view.frame.size.width)!/2) - (circleRadius/2), y: ((LabIndicator.currentView?.view.frame.size.height)!/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer4.bounds =  shapeLayer4.frame
        LabIndicator.currentView?.view.layer.addSublayer(shapeLayer4)
        
        //--Shape 5
        let shapeLayer5 = CAShapeLayer()
        shapeLayer5.path = circlePath5.cgPath
        
        shapeLayer5.fillColor = UIColor.clear.cgColor
        shapeLayer5.strokeColor = LabIndicator.lineColor
        shapeLayer5.lineWidth = LabIndicator.lineWidth
        
        shapeLayer5.frame = CGRect(x: ((LabIndicator.currentView?.view.frame.size.width)!/2) - (circleRadius/2), y: ((LabIndicator.currentView?.view.frame.size.height)!/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer5.bounds =  shapeLayer5.frame
        LabIndicator.currentView?.view.layer.addSublayer(shapeLayer5)
        
        
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
        
        
        LabIndicator.Circle4.circle4_1 = shapeLayer
        LabIndicator.Circle4.circle4_2 = shapeLayer2
        LabIndicator.Circle4.circle4_3 = shapeLayer3
        LabIndicator.Circle4.circle4_4 = shapeLayer4
        LabIndicator.Circle4.circle4_5 = shapeLayer5

        
    }






}
