//
//  SettingsViewController.swift
//  LeapWord
//
//  Created by Khidr Brinkley on 7/6/21.
//

import UIKit


class SettingsViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor  = UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1)
        title = "Settings"
        
        
//        var howToLabel = UILabel(frame: CGRect(x: 0, y: 350, width: 415 ,height: 175))
//        howToLabel.textAlignment = NSTextAlignment.center
//        howToLabel.backgroundColor = UIColor.blue
//        howToLabel.text = "Sound"
//        howToLabel.textColor = .white
//        self.view.addSubview(howToLabel)
        
        let howToButton = UIButton(frame: CGRect(x: 55, y: 300, width: 300, height: 50))
        howToButton.setTitle("How To Play", for: .normal)
        howToButton.setTitleColor(UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1), for: .normal)
        howToButton.backgroundColor = UIColor(red: 22/255, green: 193/255, blue: 114/255, alpha: 1)
        howToButton.layer.cornerRadius = 10
        howToButton.clipsToBounds = true
        howToButton.addTarget(self, action: #selector(howToButtonAction), for: .touchUpInside)
        self.view.addSubview(howToButton)
        
        
        let soundButton = UIButton(frame: CGRect(x: 55, y: 400, width: 300, height: 50))
        soundButton.setTitle("Sound", for: .normal)
        soundButton.setTitleColor(UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1), for: .normal)
        soundButton.backgroundColor = UIColor(red: 22/255, green: 193/255, blue: 114/255, alpha: 1)
        soundButton.layer.cornerRadius = 10
        howToButton.clipsToBounds = true
        soundButton.addTarget(self, action: #selector(soundButtonAction), for: .touchUpInside)
        self.view.addSubview(soundButton)
        
        
        
        let vibrationButton = UIButton(frame: CGRect(x: 55, y: 500, width: 300, height: 50))
        vibrationButton.setTitle("Vibration", for: .normal)
        vibrationButton.setTitleColor(UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1), for: .normal)
        vibrationButton.backgroundColor = UIColor(red: 22/255, green: 193/255, blue: 114/255, alpha: 1)
        vibrationButton.layer.cornerRadius = 10
        vibrationButton.clipsToBounds = true
        vibrationButton.addTarget(self, action: #selector(vibrationButtonAction), for: .touchUpInside)
        self.view.addSubview(vibrationButton)
    }
    
    @objc func howToButtonAction(sender: UIButton) {
        print("How To Play Button Pressed!")
    }
    
    @objc func soundButtonAction() {
        print("Sound Button pressed!")
    }
    
    @objc func vibrationButtonAction() {
        print("Vibration Button Pressed!")
    }
    
}

