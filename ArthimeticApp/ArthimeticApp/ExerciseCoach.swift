//
//  ExerciseCoach.swift
//  ArthimeticApp
//
//  Created by Student on 2/14/19.
//  Copyright © 2019 Subhash. All rights reserved.
//

import UIKit

class ExerciseCoach{
    static let sports:[String:Double] = ["Bicycling":8.0,"Jumping rope":12.3,"Running - slow":9.8,"Running - fast":23.0,"Tennis":8.0,"Swimming":5.8]
    static let weightInkg:Double = 2.2
    static func energyConsumed(during: String,weight: Double,time: Double) -> Double{
        let met = sports[during]!
        let energy:Double = Double(String(format: "%.1f", ((met * 3.5 * (weight/weightInkg))/200)*time))!
        return energy
        
    }//end of method energy consumed
    
    static  func timeToLose1Pound(during: String,weight: Double) -> Double{
        
        let met:Double = sports[during]!
        let time:Double = Double(String(format: "%.1f",(3500/((met * 3.5 * (weight/weightInkg))/200))))!
        return time
        
    }//end of method time To loase 1 pound
    
}//end of struct

