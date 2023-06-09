//
//  AuthenticationInputView.swift
//  SetChat
//
//  Created by Mehmet Kerim ÖZEK on 10.04.2023.
//

import UIKit

class AuthenticationInputView: UIView {
   
    init(image: UIImage, textField: UITextField) {
        super.init(frame: .zero)
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = image
        imageView.tintColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(textField)
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            imageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 24),
            imageView.heightAnchor.constraint(equalToConstant: 24),
            
            textField.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
            textField.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 8),
            textField.trailingAnchor.constraint(equalTo: textField.trailingAnchor, constant: 8)
        ])
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 0.6
        layer.cornerRadius = 8
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

