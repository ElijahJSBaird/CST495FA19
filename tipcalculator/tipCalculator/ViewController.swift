//
//  ViewController.swift
//  tipCalculator
//
//  Created by Elijah Baird on 8/28/19.
//  Copyright © 2019 Elijah Baird. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var percentControl: UISegmentedControl!
    @IBOutlet weak var inputField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.15, 0.20]
        let bill = Double(inputField.text!) ?? 0
        let tip = (bill * tipPercent[percentControl.selectedSegmentIndex])
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

