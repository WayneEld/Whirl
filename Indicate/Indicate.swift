//
//  Indicate.swift
//  Indicate
//
//  Created by Wayne Eldridge on 2017/04/15.
//  Copyright © 2017 Wayne Eldridge. All rights reserved.
//

import Foundation
import UIKit


//TODO: Make color wheel //

public enum IndicateType {
     case labyrinth
    case normal
    
    init(fromRawValue: IndicateType){
        self = .normal
    }
    
}

public var currentView = UIApplication.shared.windows[0].rootViewController

public class Indicate {
    
     static var activityType = IndicateType(fromRawValue: .normal)
     let lab = LabIndicator()
    let normal = Normal()
     static  var indicateType = Indicate.activityType

    public init(indicatorType: IndicateType){
        Indicate.activityType = indicatorType
    }
    
   public func startIndicator(){
            constructIndicatorAndStart()
     }
    
  private func constructIndicatorAndStart(){
        
           let indicateType = Indicate.activityType
    
        switch  indicateType{
        case .labyrinth:
            print("Lab start")
       
            lab.showIndicator()

        case .normal:
            normal.showIndicator()

        }

    }
    
  public  func stopIndicator(){
        let indicateType = Indicate.activityType
        switch  indicateType{
        case .labyrinth:
            print("Lab")
            lab.hideIndicator()
        case .normal:
            normal.hideIndicator()
        }
    }
    
    
    //TODO: Still need to work out
    public  func stopIndicatorAndFade(_ duration: TimeInterval){
        let indicateType = Indicate.activityType
        switch  indicateType{
        case .labyrinth:
            print("Lab")
            lab.hideIndicator()
        case .normal:
            normal.hideIndicatorAndFade(withDuration: duration)
        }
    }
    

}


