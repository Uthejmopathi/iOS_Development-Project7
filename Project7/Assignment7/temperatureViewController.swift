//
//  temperatureViewController.swift
//  Assignment7
//
//  Created by Uthej Mopathi on 8/29/20.
//  Copyright © 2020 Uthej Mopathi. All rights reserved.
//

import UIKit

class temperatureViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var temperatureEntryTextField: UITextField!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var segmentToggled: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
            temperatureEntryTextField.keyboardType = .decimalPad
               }
        // Do any additional setup after loading the view.
   
        var enteredTemperature: String?
        var convertedValue: String?
      
    func convertingValue(isCelsius : Bool) -> String? {
        if let temperatureEntered = enteredTemperature,
            let convertedValueOfTemperature = Double(temperatureEntered) {
            switch !isCelsius {
                           case true:
                               let value = (convertedValueOfTemperature * 1.8) + 32
                               convertedValue = String(value.rounded())
                           case false:
                               let value = (convertedValueOfTemperature - 32 ) / 1.8
                               convertedValue = String(value.rounded())
                           }
                       }
           
                       return convertedValue
                   }
 
        @IBAction func convertButtonTapped(_ sender: Any) {
        temperatureEntryTextField.resignFirstResponder()

            if let text = temperatureEntryTextField.text {
                enteredTemperature = text
                temperatureLabel.text = enteredTemperature
            }
        }

        @IBAction func segmentedControlTapped(_ sender: Any) {
            temperatureEntryTextField.text = ""

            let selectedIndex = segmentedControl.selectedSegmentIndex
            assignConvertedValue(isCelsius: selectedIndex == 0 ? true : false)
        }

        func assignConvertedValue(isCelsius: Bool) {
            let value = convertingValue(isCelsius: isCelsius)
                temperatureLabel.text = value
            
        }
}

