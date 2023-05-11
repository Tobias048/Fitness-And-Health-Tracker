//
//  BloodPressureViewController.swift
//  Fitness And Health Tracker
//
//  Created by Gabriel Delgado Ramos on 4/11/23.
//

import UIKit

class BloodPressureViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var pickerTwoLabel: UILabel!
    
    @IBOutlet weak var displayLabelOne: UILabel!
    @IBOutlet weak var displayLabelTwo: UILabel!
    @IBOutlet weak var displayLabelThree: UILabel!
    @IBOutlet weak var displayLabelFour: UILabel!
    @IBOutlet weak var displayLabelFive: UILabel!
    
    
    
    var pickerDataTwo = ["Normal(<120 and <80)","Elevated(120-129 and <80)","High Stage 1(130-139 or 80-89)","High Stage 2(140+ or 90+)","Hypertensive(180+ and 120+)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataTwo.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataTwo[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerTwoLabel.text = pickerDataTwo[row]
    }
    
    
    @IBAction func changeTheme(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.white
        pickerTwoLabel.textColor = UIColor.black
        displayLabelOne.textColor = UIColor.black
        displayLabelTwo.textColor = UIColor.black
        displayLabelThree.textColor = UIColor.black
        displayLabelFour.textColor = UIColor.black
        displayLabelFive.textColor = UIColor.black
        picker.setValue(UIColor.black, forKey: "textColor")

    }
    
}
