//
//  MultiComponentPickerViewController.swift
//  TapAndPicker
//
//  Created by Mingyuan Xie on 10/23/22.
//

import UIKit

class MultiComponentPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var MultiPicker: UIPickerView!
    let Red = ColourChannel.Red
    let Blue = ColourChannel.Blue
    let Green = ColourChannel.Green
    
    var ValueArray:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildArray()
        // Do any additional setup after loading the view.
        MultiPicker.selectRow(1, inComponent: Red.rawValue, animated: true)
        MultiPicker.selectRow(1, inComponent: Blue.rawValue, animated: true)
        MultiPicker.selectRow(1, inComponent: Green.rawValue, animated: true)
    }
    
    func buildArray(){
        for index in stride(from: 256, to: 0, by: -1){
            ValueArray.append(String(index))
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 256
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ValueArray[row]
    }
    
    @IBAction func selectButton_Pressed(_ sender: UIButton) {
        let RedChannelIndex = MultiPicker.selectedRow(inComponent: Red.rawValue)
        let BlueChannelIndex = MultiPicker.selectedRow(inComponent: Blue.rawValue)
        let GreenChannelIndex = MultiPicker.selectedRow(inComponent: Green.rawValue)
        
        let RedChannel = ValueArray[RedChannelIndex]
        let BlueChannel = ValueArray[BlueChannelIndex]
        let GreenChannel = ValueArray[GreenChannelIndex]
        
        print("Red:\(RedChannel) Green:\(GreenChannel) Blue:\(BlueChannel)" )
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
