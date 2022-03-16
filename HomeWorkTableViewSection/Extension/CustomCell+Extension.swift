//
//  CustomCell+Extension.swift
//  HomeWorkTableViewSection
//
//  Created by Егор Астахов on 16.03.2022.
//

import UIKit

//MARK: - Extension

// configureView
extension CustomTableViewCell: ConfigureViewProtocol {
    func configureView() {
        
        contentView.addSubview(nameOfStudent)
        
        NSLayoutConstraint.activate([
            nameOfStudent.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            nameOfStudent.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            nameOfStudent.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            nameOfStudent.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
        ])
    }
}
