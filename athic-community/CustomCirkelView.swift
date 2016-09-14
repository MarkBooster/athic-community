//
//  CustomCirkelView.swift
//  athic-community
//
//  Created by Mark Booster on 14-09-16.
//  Copyright © 2016 Mark Booster. All rights reserved.
//

import UIKit

class CustomCirkelView: UIImageView {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = self.frame.width / 2
        
    }

}
