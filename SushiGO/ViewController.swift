//
//  ViewController.swift
//  SushiGO
//
//  Created by Rodrigo Calegario on 14/05/17.
//  Copyright © 2017 RodrigoCalegario. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var qtySelect = 0;
    
    let players = ["1", "2", "3", "4", "5", "6", "7", "8"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return players[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return players.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        qtySelect = row + 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController : ViewPlayerName =  segue.destination as! ViewPlayerName
        DestViewController.qtyPlayers = qtySelect
    }
    
    @IBAction func selectPlayers(_ sender: Any) {
        if(qtySelect != 0){
            
        }
    }

}

