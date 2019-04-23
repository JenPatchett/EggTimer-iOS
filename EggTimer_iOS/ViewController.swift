//
//  ViewController.swift
//  EggTimer_iOS
//
//  Created by Patchett, Jennifer (Associate Software Tester) on 07/09/2018.
//  Copyright © 2018 Sky. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var timeLeftField: UILabel!
    @IBOutlet weak var eggImageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerSettingsBundle()
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.defaultsChanged), name: UserDefaults.didChangeNotification, object: nil)
        defaultsChanged()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func registerSettingsBundle(){
        let appDefaults = [String:AnyObject]()
        UserDefaults.standard.register(defaults: appDefaults)
    }
    @objc func defaultsChanged(){
        if UserDefaults.standard.bool(forKey: "RedThemeKey") {
            self.view.backgroundColor = UIColor.red
            
        }
        else {
            self.view.backgroundColor = UIColor.green
        }
    }
    
    

    @IBAction func startButtonClicked(_ sender: Any) {
    }
    
    @IBAction func stopButtonClicked(_ sender: Any) {
    }
    
    @IBAction func resetButtonClicked(_ sender: Any) {
    }
    
    @IBAction func sliderMoved(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        
        timeLeftField.text = "\(currentValue)"
    }
    

}

