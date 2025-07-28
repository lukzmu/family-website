//
//  FooterComponent.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

import Plot

struct FooterComponent: Component {
    var body: Component {
        Node.footer(
            Node.div(
                .class(
                    "mx-auto max-w-7xl overflow-hidden px-6 py-20 sm:py-24 lg:px-8"
                ),
                Node.span(
                    .class(
                        "text-sm text-neutral-600 dark:text-neutral-500 flex justify-center"
                    ),
                    .text("From Poland with Love.")
                ),
                Node.span(
                    .class(
                        "text-xs text-neutral-600 dark:text-neutral-500 flex justify-center"
                    ),
                    .text("Created with "),
                    Node.a(
                        .class("underline ml-1"),
                        .href("https://github.com/JohnSundell/Publish"),
                        .text("Publish")
                    ),
                    .text(". Source on "),
                    Node.a(
                        .class("underline ml-1"),
                        .href("https://github.com/lukzmu/family-website"),
                        .text("GitHub")
                    ),
                    .text(".")
                )
            ),
        )
    }
}
