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
    let date: String
    let important: Bool?

    init(title: String, icon: String, date: String, important: Bool?) {
        self.title = title
        self.icon = icon
        self.date = date
        self.important = important
    }

    var parsedDate: Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy.MM.dd"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter.date(from: date) ?? .distantPast
    }

    var dateFormatted: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM yyyy"
        return formatter.string(from: parsedDate)
    }
}
