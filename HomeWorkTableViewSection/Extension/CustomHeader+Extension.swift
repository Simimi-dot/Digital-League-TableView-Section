//
//  CustomHeader+Extension.swift
//  HomeWorkTableViewSection
//
//  Created by Егор Астахов on 16.03.2022.
//

import UIKit

//MARK: - Extension

// configureView
extension CustomHeaderView: ConfigureViewProtocol {
    func configureView() {
        
        self.addSubview(numberOfClassLabel)
        self.addSubview(addButton)
        
        NSLayoutConstraint.activate([
            numberOfClassLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            numberOfClassLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            numberOfClassLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            numberOfClassLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
            
            addButton.topAnchor.constraint(equalTo: numberOfClassLabel.topAnchor),
            addButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            addButton.bottomAnchor.constraint(equalTo: numberOfClassLabel.bottomAnchor)
        ])
    }
}
