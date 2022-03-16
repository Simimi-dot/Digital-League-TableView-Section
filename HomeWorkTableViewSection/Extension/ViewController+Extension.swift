//
//  ViewController+Extension.swift
//  HomeWorkTableViewSection
//
//  Created by Егор Астахов on 16.03.2022.
//

import UIKit

//MARK: - Extension

// UITableViewDelegate, UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        
        let studentName = studentsArray[indexPath.section].students[indexPath.row]
        cell.nameOfStudent.text = studentName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        studentsArray[section].students.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        studentsArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = CustomHeaderView()
        
        header.numberOfClassLabel.text = studentsArray[section].studentClass.rawValue
        header.addButton.tag = section
        header.addButton.addTarget(self, action: #selector(addStudent), for: .touchUpInside)
        
        return header
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            let deletedRow = studentsArray[indexPath.section].students.remove(at: indexPath.row)
            deletedStudents.append(deletedRow)
            
            someTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = .clear
    }
}

// configureView
extension ViewController: ConfigureViewProtocol {
    func configureView() {
        view.layer.addSublayer(gradientLayer)
        
        view.addSubview(someTableView)
        
        NSLayoutConstraint.activate([
            someTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            someTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            someTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            someTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

// @objc
extension ViewController {
    @objc
    func addStudent(button: UIButton) {
        if !deletedStudents.isEmpty {
            let section = button.tag
            
            studentsArray[section].students.append(deletedStudents[0])
            deletedStudents.removeFirst()
            
            someTableView.reloadData()
        } else {
            print("В списке никого нет")
        }
    }
}

