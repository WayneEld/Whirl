//
//  Normal.swift
//  Indicate
//
//  Created by Wayne Eldridge on 2017/04/24.
//  Copyright © 2017 Wayne Eldridge. All rights reserved.
//

import UIKit

class Normal {
    
    
    private static let lineWidth = CGFloat(1)
   private static let lineColor = UIColor.black.cgColor
    private static let size = CGFloat(70)
    private static let drawDuration = CFTimeInterval(0) //TODO: May need to remove draw duration, it does not work
    private static var circle1 = CAShapeLayer()
        static var backDrop = UIView()
    
    
    public func showIndicator(){
                drawBackDrop()
        constructCircle(percentage: 0.8, size: Normal.size * 0.4, duration: 2)
            }
    
    
    public func hideIndicator(){
                Normal.backDrop.removeFromSuperview()
        Normal.circle1.removeFromSuperlayer()
            }
    
    public func hideIndicatorAndFade(withDuration: TimeInterval){
        
        UIView.animate(withDuration: withDuration, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            Normal.backDrop.alpha = 0.0
            Normal.circle1.fillColor = UIColor.clear.cgColor
                        self.removeItemsFromSuperView(delay: withDuration * 1.1)
        }, completion: nil)
        
    }
    
    private func removeItemsFromSuperView(delay: TimeInterval){

        let delay = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: delay) {
            Normal.backDrop.removeFromSuperview()
            Normal.circle1.removeFromSuperlayer()
        }
    
    }
    
    
    
    
    //MARK: - Back Drop
    private  func drawBackDrop(){
        
       
        
        //TODO: Guards for current view
        
        //--Back Drop View
        let backDropView = UIView()
        let backDropX = (Indicate.currentView?.view.frame.size.width)!/2
        let backDropY = (Indicate.currentView?.view.frame.size.height)!/2
        let backDropHeight = CGFloat(Normal.size)
        let backDropWidth = CGFloat(Normal.size)
        backDropView.frame = CGRect(x: backDropX - (backDropWidth/2), y: backDropY - (backDropHeight/2), width: backDropHeight, height: backDropWidth)
        
        
        backDropView.layer.borderWidth = 1
        backDropView.layer.masksToBounds = false
        backDropView.layer.borderColor = UIColor.clear.cgColor
        backDropView.layer.cornerRadius = 7
        backDropView.clipsToBounds = true
        
        //--Adding back drop view
        Indicate.currentView?.view.addSubview(backDropView)
        Normal.backDrop = backDropView
        
        //--Adding blurred view to back drop
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.extraLight)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = backDropView.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.alpha = 0.7
        backDropView.addSubview(blurEffectView)
        
        
    }
    
    //MARK: - Circle
    private func constructCircle(percentage: Double, size: CGFloat,  duration: Double){
        
        let percentCircle = percentage
        let circleCenter = CGPoint(x:  (Indicate.currentView?.view.frame.size.width)!/2, y:  (Indicate.currentView?.view.frame.size.height)!/2)
        let circleRadius = size
        let startAngle = CGFloat(0)
        
        let endAngle = CGFloat((.pi * 2 * percentCircle))
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle:endAngle, clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = Normal.lineColor
        shapeLayer.lineWidth = Normal.lineWidth
        
        shapeLayer.frame = CGRect(x: ((Indicate.currentView?.view.frame.size.width)!/2) - (circleRadius/2), y: ((Indicate.currentView?.view.frame.size.height)!/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer.bounds =  shapeLayer.frame
        Indicate.currentView?.view.layer.addSublayer(shapeLayer)
        Normal.circle1 = shapeLayer
        
        let rotationAnimation: CAAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation.z")
            animation.fromValue = startAngle
            animation.toValue = Float.pi * 2
            animation.duration = duration
            animation.repeatCount = Float.infinity
            return animation
        }()
        
        shapeLayer.add(rotationAnimation, forKey: "rotation")
        
        shapeLayer.strokeEnd = endAngle
        let drawAnimation = CABasicAnimation(keyPath: "strokeEnd")
        drawAnimation.duration = Normal.drawDuration
        drawAnimation.fromValue = Int(startAngle)
        drawAnimation.toValue = Int(endAngle)
        drawAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        shapeLayer.add(drawAnimation, forKey: nil)
        
    }
    
    
}
