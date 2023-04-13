//
//  CustomTextField.swift
//  SetChat
//
//  Created by Mehmet Kerim ÖZEK on 10.04.2023.
//

import UIKit

class CustomTextField: UITextField {
    
    // Define the placeholder text color and alpha for when the field is empty
    private let emptyPlaceholderColor = UIColor.white.withAlphaComponent(0.4)
    
    init(placeholder: String) {
        super.init(frame: .zero)
        
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: emptyPlaceholderColor])
        borderStyle = .none
        textColor = .white
        
        addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawPlaceholder(in rect: CGRect) {
        let placeholderRect = CGRect(x: 0, y: (bounds.size.height - font!.lineHeight) / 2, width: bounds.size.width, height: bounds.size.height)
        
        // Set the placeholder color and alpha based on whether the text field is the first responder or if it contains any text.
        let placeholderColor = UIColor.white.withAlphaComponent(isFirstResponder || !(text?.isEmpty ?? true) ? 1.0 : 0.4)
        
        // Set the attributes for the attributed placeholder text.
        let _: [NSAttributedString.Key: Any] = [.foregroundColor: placeholderColor]
        
        // Draw the attributed placeholder text using the set attributes.
        if let attributedPlaceholder = attributedPlaceholder {
            attributedPlaceholder.draw(in: placeholderRect)
            attributedPlaceholder.draw(with: placeholderRect, options: [.usesLineFragmentOrigin], context: nil)
        }
    }


    
    @objc private func textFieldDidChange() {
        // Redraw the placeholder text when the text changes
        setNeedsDisplay()
    }
}

