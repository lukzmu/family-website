//
//  Configuration.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

import Foundation
import Plot
import Publish

// This type acts as the configuration for your website.
struct FamilyWebsite: Website {
    enum SectionID: String, WebsiteSectionID {
        // We don't really want any sections, but this is required by Publish
        case nothing
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // We don't really want any Item Metadata, but this is required by Publish
    }

    var url = URL(string: "https://zmudzinski.me")!
    var name = "Anna and Łukasz"
    var description = "Our family website"
    var language: Language { .english }
    var imagePath: Path? { "Images/favicon.png" }
}
