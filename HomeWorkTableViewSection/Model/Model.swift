//
//  Model.swift
//  HomeWorkTableViewSection
//
//  Created by Егор Астахов on 16.03.2022.
//

import Foundation

//MARK: - Enum
enum Classes: String {
    case firstClass = "9А"
    case secondClass = "9Б"
    case thirdClass = "9В"
    case fourthClass = "9Г"
}

//MARK: - Struct
struct StudentsModel {
    let studentClass: Classes
    var students: [String]
}
