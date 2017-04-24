//
//  Indicate.swift
//  Indicate
//
//  Created by Wayne Eldridge on 2017/04/15.
//  Copyright © 2017 Wayne Eldridge. All rights reserved.
//

import Foundation


public enum IndicateType {
     case labrinth
    case normal
    
    init(fromRawValue: IndicateType){
        self = .normal
    }
    
}


public class Indicate {
    
     static var activityType = IndicateType(fromRawValue: .normal)
     let lab = LabIndicator()
     static  var indicateType = Indicate.activityType


    public init(indicatorType: IndicateType){
        Indicate.activityType = indicatorType
    }
    
    func startIndicator(){
            constructIndicatorAndStart()
     }
    
    
  private func constructIndicatorAndStart(){
        
           let indicateType = Indicate.activityType
    
        switch  indicateType{
        case .labrinth:
            print("Lab start")
       
            lab.showIndicator()

        case .normal:
            print("Nor")

        }

    }
    
    
  public  func stopIndicator(){
    
        
        let indicateType = Indicate.activityType
        switch  indicateType{
        case .labrinth:
            print("Lab")

            
            lab.hideIndicator()
            
        case .normal:
            print("Nor")
    
        }

    
    
    }
    




}
