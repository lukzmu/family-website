//
//  Event.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

import Foundation

struct Event: Codable {
    let title: String
    let icon: String
    let date: Date
    let important: Bool

    init(title: String, icon: String, date: Date, important: Bool) {
        self.title = title
        self.icon = icon
        self.date = date
        self.important = important
    }
}
