//
//  CustomHeader.swift
//  HomeWorkTableViewSection
//
//  Created by Егор Астахов on 16.03.2022.
//


import UIKit

//MARK: - Class
class CustomHeaderView: UITableViewHeaderFooterView {
    lazy var numberOfClassLabel: UILabel = {
       var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    lazy var addButton: UIButton = {
       var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Add", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.backgroundColor = .clear
        return button
    }()
    
    //MARK: - Init
    override init(reuseIdentifier: String?) {
        super .init(reuseIdentifier: reuseIdentifier)
        configureView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
