//
//  ViewController.swift
//  HomeWorkTableViewSection
//
//  Created by Егор Астахов on 16.03.2022.
//

import UIKit

//MARK: - Class
class ViewController: UIViewController {
    
    //MARK: - Properties
    
    let cellId = "cellId"
    let headerId = "headerId"
    
    var studentsArray: [StudentsModel] = [
        StudentsModel(studentClass: .firstClass, students: ["Андрей", "Антон", "Арсений", "Анатолий"]),
        StudentsModel(studentClass: .secondClass, students: ["Борис", "Богдан", "Белла", "Берта"]),
        StudentsModel(studentClass: .thirdClass, students: ["Влад", "Василий", "Вадим", "Валерий"]),
        StudentsModel(studentClass: .fourthClass, students: ["Гарри", "Гамлет", "Герман", "Григорий"])
    ]
    
    var deletedStudents: [String] = []
    
    lazy var someTableView: UITableView = {
        var tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.backgroundColor = .clear
        
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.register(CustomHeaderView.self, forHeaderFooterViewReuseIdentifier: headerId)
        
        return tableView
    }()
    
    lazy var gradientLayer: CAGradientLayer = {
        var gradient = CAGradientLayer()
        gradient.colors = [UIColor.green.cgColor, UIColor.cyan.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.cornerRadius = 15
        gradient.frame = self.view.bounds
        return gradient
    }()
    
    //MARK: - Life Cycle
    override func loadView() {
        super.loadView()
        navigationItem.largeTitleDisplayMode = .automatic
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        navigationController?.navigationBar.prefersLargeTitles = true
        
        title = "Список учеников"
        
        configureView()
    }
    
}



