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
    
    @IBAction func btnRandomAction(_ sender: Any) {
        
        self.view.layer.sublayers?.forEach { $0.removeFromSuperlayer() }
        self.viewWillAppear(true)
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
        
        
        let centreView = UIView()
               let centreFrame = CGRect(x: (self.view.frame.size.width/2) - 5, y: (self.view.frame.size.height/2) - 5, width: 10, height: 10)
centreView.frame = centreFrame
        centreView.backgroundColor = UIColor.orange
        self.view.addSubview(centreView)
        
//        view.addSubview(activityImg1)
//        view.addSubview(activityImg2)
//        view.addSubview(activityImg3)
//        view.addSubview(activityImg4)
        
        
        //drawCircle()
        /*
        drawCircle2()
       drawCircle3()
        drawCircle5()
        */
        
        
        //drawCircle4()
        //rep()
        
        //roatateOnce()
        
        let size = CGFloat(50)
        
        
        drawLab(percentage: 0.95, size: size, duration: 5)
       drawLab(percentage: 0.75, size: size * 0.8, duration: 3)
        drawLab1(percentage: 0.2, size: size * 0.6, duration: 3.5)
        drawLab2(percentage: 0.2, size: size * 0.4, duration: 4)
        

        /*
       drawLab(percentage: randomPercentage(), size: size, duration: randomDuration())
        drawLab(percentage: randomPercentage(), size: size * 0.8, duration: randomDuration())
        drawLab(percentage: randomPercentage(), size: size * 0.6, duration: randomDuration())
        drawLab(percentage: randomPercentage(), size: size * 0.4, duration: randomDuration())
        drawLab(percentage: randomPercentage(), size: size * 0.2, duration: randomDuration())
 */
 
        /*
        drawLab(percentage: 0.1, size: size, duration: 5)
        drawLab(percentage: 0.1, size: size, duration: 4)
        drawLab(percentage: 0.1, size: size, duration: 2)
        drawLab(percentage: 0.3, size: size, duration: 2)
        drawLab(percentage: 0.1, size: size, duration: 3)
        */
        
        //drawLab(percentage: 0.8, size: size, duration: 3)
        //drawLabAnti(percentage: 0.2, size: size * 0.9, duration: 3)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomPercentage() -> Double{
    
    let randomPercentage = Double(arc4random_uniform(100))
        print(randomPercentage)
        return randomPercentage/100
    }
    
    func randomDuration() -> Double{
        
        let randomDuration = Double(arc4random_uniform(100))

        return (randomDuration/100 * 5)
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
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 2
        // shapeLayer.backgroundColor = UIColor.blue.cgColor

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
    
    func drawLab1(percentage: Double, size: CGFloat,  duration: Double){
        
        
        let percentCircle = percentage
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
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 2
        // shapeLayer.backgroundColor = UIColor.blue.cgColor
        
        shapeLayer.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer.bounds =  shapeLayer.frame
        self.view.layer.addSublayer(shapeLayer)
        
        
        //--Shape 2
        let shapeLayer2 = CAShapeLayer()
        shapeLayer2.path = circlePath2.cgPath
        
        
        shapeLayer2.fillColor = UIColor.clear.cgColor
        shapeLayer2.strokeColor = UIColor.black.cgColor
        shapeLayer2.lineWidth = 2
        
        shapeLayer2.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer2.bounds =  shapeLayer2.frame
        self.view.layer.addSublayer(shapeLayer2)
        
        //--Shape 3
        let shapeLayer3 = CAShapeLayer()
        shapeLayer3.path = circlePath3.cgPath
        
        
        shapeLayer3.fillColor = UIColor.clear.cgColor
        shapeLayer3.strokeColor = UIColor.black.cgColor
        shapeLayer3.lineWidth = 2
        
        shapeLayer3.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer3.bounds =  shapeLayer3.frame
        self.view.layer.addSublayer(shapeLayer3)
        
        //--Shape 4
        let shapeLayer4 = CAShapeLayer()
        shapeLayer4.path = circlePath4.cgPath
        
        
        shapeLayer4.fillColor = UIColor.clear.cgColor
        shapeLayer4.strokeColor = UIColor.black.cgColor
        shapeLayer4.lineWidth = 2
        
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
    
    func drawLab2(percentage: Double, size: CGFloat,  duration: Double){
        
        
        let percentCircle = percentage
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
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 2
        // shapeLayer.backgroundColor = UIColor.blue.cgColor
        
        shapeLayer.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer.bounds =  shapeLayer.frame
        self.view.layer.addSublayer(shapeLayer)
        
        
        //--Shape 2
        let shapeLayer2 = CAShapeLayer()
        shapeLayer2.path = circlePath2.cgPath
        
        
        shapeLayer2.fillColor = UIColor.clear.cgColor
        shapeLayer2.strokeColor = UIColor.black.cgColor
        shapeLayer2.lineWidth = 2
        
        shapeLayer2.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer2.bounds =  shapeLayer2.frame
        self.view.layer.addSublayer(shapeLayer2)
        
        //--Shape 3
        let shapeLayer3 = CAShapeLayer()
        shapeLayer3.path = circlePath3.cgPath
        
        
        shapeLayer3.fillColor = UIColor.clear.cgColor
        shapeLayer3.strokeColor = UIColor.black.cgColor
        shapeLayer3.lineWidth = 2
        
        shapeLayer3.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer3.bounds =  shapeLayer3.frame
        self.view.layer.addSublayer(shapeLayer3)
        
        //--Shape 4
        let shapeLayer4 = CAShapeLayer()
        shapeLayer4.path = circlePath4.cgPath
        
        
        shapeLayer4.fillColor = UIColor.clear.cgColor
        shapeLayer4.strokeColor = UIColor.black.cgColor
        shapeLayer4.lineWidth = 2
        
        shapeLayer4.frame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        shapeLayer4.bounds =  shapeLayer4.frame
        self.view.layer.addSublayer(shapeLayer4)
        
        //--Shape 5
        let shapeLayer5 = CAShapeLayer()
        shapeLayer5.path = circlePath5.cgPath
        
        
        shapeLayer5.fillColor = UIColor.clear.cgColor
        shapeLayer5.strokeColor = UIColor.black.cgColor
        shapeLayer5.lineWidth = 2
        
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
        
 
        
         shapeLayer.add(rotationAnimation, forKey: "rotation")
         shapeLayer2.add(rotationAnimation, forKey: "rotation")
         shapeLayer3.add(rotationAnimation, forKey: "rotation")
        shapeLayer4.add(rotationAnimation, forKey: "rotation")
        shapeLayer5.add(rotationAnimation, forKey: "rotation")
        
    }
    
    func drawCircle(){
    
        let percentCircle = 0.1
        let circleCenter = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2)
        let circleRadius = CGFloat(120)
        let startAngle = CGFloat(0)
        let endAngle = CGFloat((M_PI * 2 * percentCircle))
        
        //let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle:endAngle, clockwise: true)
        //let arcWidth: CGFloat = 76
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        //change the fill color
        shapeLayer.fillColor = UIColor.clear.cgColor
        //you can change the stroke color
        shapeLayer.strokeColor = UIColor.red.cgColor
        //you can change the line width
        shapeLayer.lineWidth = 2.0
        //shapeLayer.backgroundColor = UIColor.lightGray.cgColor
        let shapeWidth = CGFloat(60)
        let shapeHeight = CGFloat(60)
        
        let theFrame = CGRect(x: (self.view.frame.size.width/2) - (circleRadius/2), y: (self.view.frame.size.height/2) - (circleRadius/2), width: circleRadius, height: circleRadius)
        
        
        shapeLayer.frame = theFrame
        
        //let screenCenter = CGRect(x: self.view.bounds.size.width/2, y: self.view.bounds.size.height/2, width: 100, height: 100)
        shapeLayer.bounds = shapeLayer.frame
        shapeLayer.backgroundColor = UIColor.lightGray.cgColor
        //shapeLayer.bounds = CGRect(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2, width: (shapeLayer.path?.boundingBoxOfPath.width)!, height: (shapeLayer.path?.boundingBoxOfPath.height)!)
        self.view.layer.addSublayer(shapeLayer)
//
        
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
            animation.fromValue = startAngle
            animation.toValue = Float.pi * 2
            animation.duration = 2
            animation.repeatCount = MAXFLOAT
            return animation
        }()
        
        shapeLayer.add(rotationAnimation, forKey: "rotation")
        
        /*
         shapeLayer.strokeEnd = (CGFloat(M_PI * 2 * percentCircle))
         // Then apply the animation.
         var drawAnimation = CABasicAnimation(keyPath: "strokeEnd")
         drawAnimation.duration = 1
         drawAnimation.fromValue = Int(startAngle)
         drawAnimation.toValue = Int(endAngle)
        drawAnimation.repeatCount = Float(CGFloat.infinity)
         drawAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
         shapeLayer.add(drawAnimation, forKey: "drawCircleAnimation")
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
    
    func drawCircle2(){
        
        let percentCircle = 0.75
        let circleCenter = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2)
        let circleRadius = CGFloat(120)
        let startAngle = CGFloat(0)
        let endAngle = CGFloat((M_PI * 2 * percentCircle))
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle:endAngle, clockwise: true)
        
        
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        

        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.orange.cgColor
        shapeLayer.lineWidth = 2.0
       // shapeLayer.backgroundColor = UIColor.blue.cgColor
        let shapeWidth = shapeLayer.path!.boundingBoxOfPath.width
        let shapeHeight = shapeLayer.path!.boundingBoxOfPath.height
        shapeLayer.frame = CGRect(x: (self.view.frame.size.width/2) - (shapeWidth/2), y: (self.view.frame.size.height/2) - (shapeHeight)/2, width: shapeLayer.path!.boundingBoxOfPath.width, height: shapeLayer.path!.boundingBoxOfPath.height)
        shapeLayer.bounds = shapeLayer.path!.boundingBoxOfPath
        self.view.layer.addSublayer(shapeLayer)
        
        let rotationAnimation: CAAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation.z")
            animation.fromValue = 0
            animation.toValue = M_PI * 2
            animation.duration = 4
            animation.repeatCount = MAXFLOAT
            return animation
        }()
        
        shapeLayer.add(rotationAnimation, forKey: "rotation")
        
      
    }

    func drawCircle3(){
        
        let percentCircle = 0.85
        let circleCenter = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2)
        let circleRadius = CGFloat(100)
        let startAngle = CGFloat(0)
        let endAngle = CGFloat((M_PI * 2 * percentCircle))
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle:endAngle, clockwise: true)
        
        
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.orange.cgColor
        shapeLayer.lineWidth = 2.0
        // shapeLayer.backgroundColor = UIColor.blue.cgColor
        let shapeWidth = shapeLayer.path!.boundingBoxOfPath.width
        let shapeHeight = shapeLayer.path!.boundingBoxOfPath.height
        shapeLayer.frame = CGRect(x: (self.view.frame.size.width/2) - (shapeWidth/2), y: (self.view.frame.size.height/2) - (shapeHeight)/2, width: shapeLayer.path!.boundingBoxOfPath.width, height: shapeLayer.path!.boundingBoxOfPath.height)
        shapeLayer.bounds = shapeLayer.path!.boundingBoxOfPath
        self.view.layer.addSublayer(shapeLayer)
        
        let rotationAnimation: CAAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation.z")
            animation.fromValue = 0
            animation.toValue = M_PI * 2
            animation.duration = 3
            animation.repeatCount = MAXFLOAT
            return animation
        }()
        
        shapeLayer.add(rotationAnimation, forKey: "rotation")
        
        
    }
    
    func drawCircle4(){
        
        let percentCircle = 0.75
        let circleCenter = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2)
        let circleRadius = CGFloat(150)
        let startAngle = CGFloat(0)
        let endAngle = CGFloat((M_PI * 2 * percentCircle))
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle:endAngle, clockwise: true)
        
        
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.white.cgColor
        shapeLayer.lineWidth = 4
        // shapeLayer.backgroundColor = UIColor.blue.cgColor
        let shapeWidth = shapeLayer.path!.boundingBoxOfPath.width
        let shapeHeight = shapeLayer.path!.boundingBoxOfPath.height
        shapeLayer.frame = CGRect(x: (self.view.frame.size.width/2) - (shapeWidth/2), y: (self.view.frame.size.height/2) - (shapeHeight)/2, width: shapeLayer.path!.boundingBoxOfPath.width, height: shapeLayer.path!.boundingBoxOfPath.height)
        shapeLayer.bounds = shapeLayer.path!.boundingBoxOfPath
        self.view.layer.addSublayer(shapeLayer)
        
        let rotationAnimation: CAAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation.z")
            animation.fromValue = 0
            animation.toValue = M_PI * 2
            animation.duration = 4
            animation.repeatCount = MAXFLOAT
            return animation
        }()
        
        shapeLayer.add(rotationAnimation, forKey: "rotation")
        
        
    }
    
    func drawCircle5(){
        
        let percentCircle = 0.8
        let circleCenter = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height/2)
        let circleRadius = CGFloat(170)
        let startAngle = CGFloat(0)
        let endAngle = CGFloat((M_PI * 2 * percentCircle))
        
        
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: CGFloat(-M_PI_2), endAngle:CGFloat(M_PI * 2 * percentCircle - M_PI_2), clockwise: true)

       // let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: startAngle, endAngle:endAngle, clockwise: true)
        
        
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        
        
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.blue.cgColor
        shapeLayer.lineWidth = 2
        // shapeLayer.backgroundColor = UIColor.blue.cgColor
        let shapeWidth = shapeLayer.path!.boundingBoxOfPath.width
        let shapeHeight = shapeLayer.path!.boundingBoxOfPath.height
        shapeLayer.frame = CGRect(x: (self.view.frame.size.width/2) - (shapeWidth/2), y: (self.view.frame.size.height/2) - (shapeHeight)/2, width: shapeLayer.path!.boundingBoxOfPath.width, height: shapeLayer.path!.boundingBoxOfPath.height)
        shapeLayer.bounds = shapeLayer.path!.boundingBoxOfPath
        self.view.layer.addSublayer(shapeLayer)
        
        let rotationAnimation: CAAnimation = {
            let animation = CABasicAnimation(keyPath: "transform.rotation.z")
            animation.fromValue = 0
            animation.toValue = M_PI * 2
            animation.duration = 5
            animation.repeatCount = MAXFLOAT
            return animation
        }()
        
        shapeLayer.add(rotationAnimation, forKey: "rotation")
        
        
    }
    
    
    func rep(){
        
        let replicatorLayer = CAReplicatorLayer()
        replicatorLayer.frame = self.view.bounds
        
        // 2
        replicatorLayer.instanceCount = 30
        replicatorLayer.instanceDelay = CFTimeInterval(1 / 30.0)
        replicatorLayer.preservesDepth = false
        replicatorLayer.instanceColor = UIColor.white.cgColor
        
        // 3
        replicatorLayer.instanceRedOffset = 0.0
        replicatorLayer.instanceGreenOffset = -0.5
        replicatorLayer.instanceBlueOffset = -0.5
        replicatorLayer.instanceAlphaOffset = 0.0
        
        // 4
        let angle = Float(M_PI * 2.0) / 70
        replicatorLayer.instanceTransform = CATransform3DMakeRotation(CGFloat(angle * 2), 0.0, 0.0, 1.0)
        self.view.layer.addSublayer(replicatorLayer)
        
        // 5
        let instanceLayer = CALayer()
        let layerWidth: CGFloat = 10.0
        let midX = self.view.bounds.midX - layerWidth / 2.0
        instanceLayer.frame = CGRect(x: midX, y: 0.0, width: layerWidth, height: layerWidth * 3.0)
        instanceLayer.backgroundColor = UIColor.white.cgColor
        replicatorLayer.addSublayer(instanceLayer)
        
        /*
        // 6
        let fadeAnimation = CABasicAnimation(keyPath: "opacity")
        fadeAnimation.fromValue = 1.0
        fadeAnimation.toValue = 0.0
        fadeAnimation.duration = 1
        fadeAnimation.repeatCount = Float(Int.max)
        
        // 7
        instanceLayer.opacity = 0.0
        instanceLayer.add(fadeAnimation, forKey: "FadeAnimation")
    */
    
    }

}

