//
//  PackageResources.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

import Foundation

enum PackageResources {
    static func url(_ relativePath: String, from filePath: String = #filePath)
        -> URL
    {
        var url = URL(fileURLWithPath: filePath)
        while url.lastPathComponent != "Sources" && url.path != "/" {
            url.deleteLastPathComponent()
        }
        url.deleteLastPathComponent()
        return url.appendingPathComponent(relativePath)
    }
}
