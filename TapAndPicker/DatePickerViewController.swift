//
//  ViewController.swift
//  TapAndPicker
//
//  Created by Mingyuan Xie on 10/23/22.
//

import UIKit

class DatePickerViewController: UIViewController {

    
    @IBOutlet weak var DatePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Date picker view Controller")
        let date = NSDate()
        DatePicker.date = date as Date
    }

    @IBAction func SelectButton_Pressed(_ sender: UIButton) {
        print(DatePicker.date)
    }
    
}

