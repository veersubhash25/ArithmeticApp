//
//  ViewController.swift
//  ArthimeticApp
//
//  Created by Student on 2/14/19.
//  Copyright © 2019 Subhash. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    var selectActivity:String? = "Select Activity"
    let activities = ["Select Activity","Bicycling","Jumping rope","Running - slow","Running - fast","Tennis","Swimming"]
    @IBOutlet weak var WeightTF: UITextField!
    
    @IBOutlet weak var ActivityPV: UIPickerView!
    
    @IBOutlet weak var ExerciseTF: UITextField!
    
    @IBOutlet weak var EnergyConsumedLB: UILabel!
    @IBOutlet weak var LoseOnePoundLB: UILabel!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return activities[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return activities.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectActivity = activities[row]
    }
    
    @IBAction func calculate(_ sender: Any) {
        let weight = Double(WeightTF.text!)
        let exercise = Double(ExerciseTF.text!)
        
        if weight == nil || exercise == nil || selectActivity == "Select Activity"{
            
        }else{
            let energyConsumed = ExerciseCoach.energyConsumed(during: selectActivity!, weight: weight!, time: exercise!)
            let timeToLose1Pound = ExerciseCoach.timeToLose1Pound(during:selectActivity!,weight:weight!)
            EnergyConsumedLB.text = "\(energyConsumed) cal"
            LoseOnePoundLB.text = "\(timeToLose1Pound) minutes"
        }//end of if-else case
        
    }
    
    @IBAction func clear(_ sender: Any) {
        selectActivity = "Select Activity"
        WeightTF.text = ""
        ExerciseTF.text = ""
        EnergyConsumedLB.text = "0 cal"
        LoseOnePoundLB.text = "0 minutes"
        ActivityPV.selectRow(0, inComponent: 0, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}


