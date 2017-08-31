//
//  borderButton.swift
//  swoosh
//
//  Created by Mina Melek on 8/10/17.
//  Copyright © 2017 Mina Melek. All rights reserved.
//

import UIKit

class borderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 1.5
        layer.borderColor = UIColor.white.cgColor
    }
}
