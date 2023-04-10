//
//  CustomTextField.swift
//  SetChat
//
//  Created by Mehmet Kerim ÖZEK on 10.04.2023.
//

import UIKit

class CustomTextField: UITextField {
    
    init(placeholder: String) {
        super.init(frame: .zero)
        
        attributedPlaceholder = NSMutableAttributedString(string: placeholder, attributes:[.foregroundColor: UIColor.white])
        borderStyle = .none
        textColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
