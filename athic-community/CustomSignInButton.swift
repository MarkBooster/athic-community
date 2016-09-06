//
//  CustomSignInButton.swift
//  athic-community
//
//  Created by Mark Booster on 06-09-16.
//  Copyright © 2016 Mark Booster. All rights reserved.
//

import UIKit

class CustomSignInButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        layer.cornerRadius = 2.0
        
    }

}
