//
//  XibView.swift
//  XibTest
//
//  Created by Alex Stratu on 25/01/2018.
//  Copyright © 2018 Alex Stratu. All rights reserved.
//

import UIKit

@IBDesignable class XibView: UIView {
    
    private var identifier: String {
        return String(describing: type(of: self))
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: identifier, bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            fatalError("Cannot load \(identifier) view from nib")
        }
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }
}
