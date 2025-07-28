//
//  Person.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

struct Person: Codable {
    let name: String
    let title: String
    let image: String
    
    init(name: String, title: String, image: String) {
        self.name = name
        self.title = title
        self.image = image
    }
}
