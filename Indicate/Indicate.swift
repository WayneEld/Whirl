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
}




public class Indicate {
    
     static var indicatorTypee: IndicateType = .labrinth


    public init(indicatorType: IndicateType){
        Indicate.indicatorTypee = indicatorType

    }
    
    func constructIndicator(){
    
        
   let indicateType = Indicate.indicatorTypee

    
        switch  indicateType{
        case .labrinth:
            print("Lab")
            let labrinthIndicator = LabIndicator()
            startIndicator()
            
            
            case .normal:
            print("Nor")
        default:
            print("Def")
        }
        
        
    
    
    }
    
    
    func startIndicator(){
    
        
    
    
    }
    
    
    func stopIndicator(){
    
    
    
    }
    




}
