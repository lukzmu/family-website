//
//  Animal.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

struct Animal: Codable {
    let name: String
    let avatar: String
    let alive: Bool

    init(name: String, avatar: String, alive: Bool) {
        self.name = name
        self.avatar = avatar
        self.alive = alive
    }
}
