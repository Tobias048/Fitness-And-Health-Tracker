//
//  BloodSugarViewController.swift
//  Fitness And Health Tracker
//
//  Created by Gabriel Delgado Ramos on 4/13/23.
//

import UIKit

class BloodSugarViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pick: UIPickerView!
    @IBOutlet weak var pickerThreeLabel: UILabel!
    
    @IBOutlet weak var displayOne: UILabel!
    @IBOutlet weak var displayTwo: UILabel!
    @IBOutlet weak var displayThree: UILabel!
    @IBOutlet weak var displayFour: UILabel!
    @IBOutlet weak var displayFive: UILabel!
    @IBOutlet weak var displaySix: UILabel!
    
    
    var pickerDataThree = ["Normal(80-100,170-200,120-140)","Impaired(101-125,190-230,140-160)","Diabetic(126+,220-300,200+)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataThree.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataThree[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerThreeLabel.text = pickerDataThree[row]
    }
    
    @IBAction func themeChange(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.white
        pickerThreeLabel.textColor = UIColor.black
        displayOne.textColor = UIColor.black
        displayTwo.textColor = UIColor.black
        displayThree.textColor = UIColor.black
        displayFour.textColor = UIColor.black
        displayFive.textColor = UIColor.black
        displaySix.textColor = UIColor.black
        pick.setValue(UIColor.black, forKey: "textColor")
    }
    
    
}
