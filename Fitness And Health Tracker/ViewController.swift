//
//  ViewController.swift
//  Fitness And Health Tracker
//
//  Created by Gabriel Delgado Ramos on 4/4/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerViewOne: UIPickerView!
    @IBOutlet weak var pickerOneLabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var arrowLabel: UILabel!
    @IBOutlet weak var nextPageOutlet: UIButton!
    
    
    var pickerDataOne = ["100 Cal","200 Cal","300 Cal","400 Cal","500 Cal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataOne.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataOne[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerOneLabel.text = pickerDataOne[row]
    }
    
    @IBAction func changeThemeButton(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.white
        pickerOneLabel.textColor = UIColor.black
        topLabel.textColor = UIColor.black
        labelOne.textColor = UIColor.black
        labelTwo.textColor = UIColor.black
        labelThree.textColor = UIColor.black
        labelFour.textColor = UIColor.black
        arrowLabel.textColor = UIColor.black
        pickerViewOne.setValue(UIColor.black, forKey: "textColor")
    }
    
    
}

//
