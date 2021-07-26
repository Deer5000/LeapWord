//
//  PowerUpViewController.swift
//  LeapWord
//
//  Created by Khidr Brinkley on 7/6/21.
//
import UIKit
import SwiftUI


class PowerUpViewController: UIViewController {
    
    

        override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 241/255, green: 255/255, blue: 196/255, alpha: 1)
        title = "Power Ups"
            let skipImage = UIImageView(frame: CGRect(x: 18, y: 160, width: 90, height: 90))
            let halfImage = UIImageView(frame: CGRect(x: 169, y: 160, width: 90, height: 90))
            let timeImage = UIImageView(frame: CGRect(x: 320, y: 160, width: 90, height: 90))
            
            let skiplbl = UILabel(frame: CGRect(x: 41, y: 270, width: 30, height: 30))
            let halflbl = UILabel(frame: CGRect(x: 202, y: 270, width: 30, height: 30))
            let timelbl = UILabel(frame: CGRect(x: 352, y: 270, width: 30, height: 30))
            let pointslbl = UILabel(frame: CGRect(x: 163, y: 100, width: 100, height: 50))
            
            
            
            pointslbl.text = "Points: 0"
            pointslbl.font = UIFont(name: "ArialRoundedMTBold", size: 20)
            pointslbl.textColor = UIColor(red: 22/255, green: 193/255, blue: 114/255, alpha: 1)
            view.addSubview(pointslbl)
            
            
            skiplbl.text = "0"
            skiplbl.font = UIFont(name: "ArialRoundedMTBold", size: 30)
            skiplbl.textColor = UIColor(red: 22/255, green: 193/255, blue: 114/255, alpha: 1)
            view.addSubview(skiplbl)
            
            halflbl.text = "0"
            halflbl.font = UIFont(name: "ArialRoundedMTBold", size: 30)
            halflbl.textColor = UIColor(red: 22/255, green: 193/255, blue: 114/255, alpha: 1)
            view.addSubview(halflbl)
            
            timelbl.text = "0"
            timelbl.font = UIFont(name: "ArialRoundedMTBold", size: 30)
            timelbl.textColor = UIColor(red: 22/255, green: 193/255, blue: 114/255, alpha: 1)
            view.addSubview(timelbl)
    
            
            
            skipImage.image = UIImage(named: "skip")
            view.addSubview(skipImage)
            
            halfImage.image = UIImage(named: "half")
            view.addSubview(halfImage)
            
            timeImage.image = UIImage(named: "time")
            view.addSubview(timeImage)
    }
}
//
//    let skipImage = UIImage(named: "skip")
//    skipImage?.accessibilityFrame = CGRect(x: 50, y: 50, width: 60, height: 60)
