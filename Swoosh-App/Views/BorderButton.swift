//
//  BorderButton.swift
//  Swoosh-App
//
//  Created by Asfand HAfeez on 29/10/2018.
//  Copyright © 2018 Asfand HAfeez. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
