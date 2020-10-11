//
//  InterButton.swift
//  InterButton
//
//  Created by Junya on 2020/10/10.
//

import UIKit

@IBDesignable
public final class InterButton: UIButton {
    
    @IBInspectable public var minimumScale: CGFloat = 0.98
    @IBInspectable public var duration: TimeInterval = 0.2
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        addTarget(self, action: #selector(touchDown(_:)), for: .touchDown)
        addTarget(self, action: #selector(touchUp(_:)), for: .touchUpInside)
        addTarget(self, action: #selector(touchUp(_:)), for: .touchUpOutside)
    }
    
    @objc private func touchDown(_ sender:UIButton) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseOut) {
            self.transform = CGAffineTransform(scaleX: self.minimumScale, y: self.minimumScale)
        }
    }
    
    @objc private func touchUp(_ sender:UIButton) {
        UIView.animate(withDuration: duration, delay: 0, options: .curveEaseIn) {
            self.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
    }
}
