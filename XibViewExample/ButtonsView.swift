//
//  ButtonsView.swift
//  XibViewExample
//
//  Created by Alex Stratu on 05/03/2019.
//  Copyright © 2019 Alex Stratu. All rights reserved.
//

import UIKit

class ButtonsView: XibView {

    @IBOutlet private weak var facebookButton: UIButton!
    @IBOutlet private weak var googleButton: UIButton!
    @IBOutlet private weak var emailButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        facebookButton.layer.cornerRadius = 4
        googleButton.layer.cornerRadius = 4
        emailButton.layer.cornerRadius = 4
    }
}
