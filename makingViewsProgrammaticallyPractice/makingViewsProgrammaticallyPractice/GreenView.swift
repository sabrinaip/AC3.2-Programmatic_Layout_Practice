//
//  GreenView.swift
//  makingViewsProgrammaticallyPractice
//
//  Created by Sabrina Ip on 12/22/16.
//  Copyright © 2016 Sabrina. All rights reserved.
//

import UIKit


import UIKit

class GreenView: UIView {
    
    @IBOutlet weak var numberLabel: UILabel!
    //MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadFromNib()
    }
    
    private func loadFromNib() {
        if let view = Bundle.main.loadNibNamed("GreenView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
        }
    }
}
