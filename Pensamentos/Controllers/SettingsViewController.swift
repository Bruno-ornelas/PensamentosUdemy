//
//  SettingsViewController.swift
//  Pensamentos
//
//  Created by cedro_nds on 08/01/20.
//  Copyright © 2020 cedro. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var swAutorefresh: UISwitch!
    @IBOutlet weak var slTimeInterval: UISlider!
    @IBOutlet weak var scColorScheme: UISegmentedControl!
    @IBOutlet weak var lbTimeInterval: UILabel!
    
    let config = Configuration.shared
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        formatView()
    }
    
    func formatView(){
        swAutorefresh.setOn(config.autorefresh, animated: false)
        slTimeInterval.setValue(Float(config.timeInterval), animated: false)
        scColorScheme.selectedSegmentIndex = config.colorScheme
        chageTimeIntevalLabel(with: config.timeInterval)
    }
    func chageTimeIntevalLabel(with value: Double){
        lbTimeInterval.text = "Mudar após \(Int(value)) segundos"
    }
    

    @IBAction func chageAutoRefresh(_ sender: UISwitch) {
        config.autorefresh = sender.isOn
    }
    
    
    @IBAction func chageTimeInterval(_ sender: UISlider) {
        let value = Double(round(sender.value))
         chageTimeIntevalLabel(with: value)
        config.timeInterval = value
    }
    
    @IBAction func changeColorScheme(_ sender: UISegmentedControl) {
        config.colorScheme = sender.selectedSegmentIndex
    }
    
    
    
}
