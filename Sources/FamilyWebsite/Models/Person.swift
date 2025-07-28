//
//  Person.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

struct Person: Codable {
    let name: String
    let title: String
    let avatar: String

    init(name: String, title: String, avatar: String) {
        self.name = name
        self.title = title
        self.avatar = avatar
    }
}
