//
//  ViewController.swift
//  makingViewsProgrammaticallyPractice
//
//  Created by Sabrina Ip on 12/22/16.
//  Copyright © 2016 Sabrina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var greenViews = Array(repeating: GreenView(), count: 13)
//    var green1 = GreenView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
//        self.view.addSubview(green1)
//        self.green1.translatesAutoresizingMaskIntoConstraints = false
//        
//        let _ = [
//            green1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
//            green1.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor),
//            green1.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25),
//            green1.heightAnchor.constraint(equalTo: green1.widthAnchor)
//            ].map { $0.isActive = true }
//        
//        green1.numberLabel?.text = "0"

        
        for i in 0..<self.greenViews.count {
            self.view.addSubview(greenViews[i])
            greenViews[i].translatesAutoresizingMaskIntoConstraints = false
            greenViews[i].numberLabel?.text = String(i+1)
            
            switch i {
            case 0:
                let _ = [
                    greenViews[i].leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                    greenViews[i].topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor),
                    greenViews[i].widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: CGFloat(1/Double(self.greenViews.count))),
                    greenViews[i].heightAnchor.constraint(equalTo: greenViews[i].widthAnchor)
                    ].map { $0.isActive = true }
            default:
                let _ = [
                    greenViews[i].leadingAnchor.constraint(equalTo: self.greenViews[i-1].trailingAnchor),
                    greenViews[i].topAnchor.constraint(equalTo: self.greenViews[i-1].bottomAnchor),
                    greenViews[i].widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: CGFloat(1/Double(self.greenViews.count))),
                    greenViews[i].heightAnchor.constraint(equalTo: greenViews[i].widthAnchor)
                    ].map { $0.isActive = true }
            }
        }
        
    }
}

