//
//  PillUILabel.swift
//  badge
//
//  Created by Liam Westby on 1/8/19.
//  Copyright © 2019 me. All rights reserved.
//

import UIKit

@IBDesignable class PillUILabel: UILabel {
    
    @IBInspectable var verticalPad: CGFloat = 0
    @IBInspectable var horizontalPad: CGFloat = 0
    
    override var intrinsicContentSize: CGSize {
        let superSize = super.intrinsicContentSize
        let newWidth = superSize.width + superSize.height + (2 * horizontalPad)
        let newHeight = superSize.height + (2 * verticalPad)
        let newSize = CGSize(width: newWidth, height: newHeight)
        return newSize
    }
    
    func setup() {
        layer.cornerRadius = frame.height / 2
        clipsToBounds = true
        textAlignment = .center
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
}
