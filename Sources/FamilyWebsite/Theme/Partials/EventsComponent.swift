//
//  EventsComponent.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

import Plot

struct EventsComponent: Component {
    let events: [Event]

    init(from path: String) {
        self.events = try! YamlLoader.load(for: Event.self, resource: path)
            .sorted { $0.parsedDate > $1.parsedDate }
    }

    var body: Component {
        Node.div(
            .class("pt-24 sm:pt-32"),
            Node.div(
                .class("mx-auto max-w-7xl px-6 lg:px-8"),

                Node.div(
                    .class("px-6 py-24 sm:py-32 lg:px-8"),
                    Node.div(
                        .class("mx-auto max-w-2xl text-center"),
                        Node.h2(
                            .class(
                                "text-4xl font-bold tracking-tight text-gray-900 dark:text-neutral-100"
                            ),
                            .text("Timeline")
                        ),
                        Node.p(
                            .class(
                                "mt-6 text-lg leading-8 text-gray-60 dark:text-neutral-500"
                            ),
                            .text("Events important to us.")
                        )
                    )
                ),

                Node.ul(
                    .attribute(named: "role", value: "list"),
                    .class("max-w-2xl mx-auto"),
                    .group(
                        events.enumerated().map { index, event in
                            Node.li(
                                .class(
                                    "relative flex gap-x-4 hover:scale-105 transition"
                                ),

                                // Vertical line element
                                Node.div(
                                    .class(
                                        index == events.count - 1
                                            ? "absolute left-0 top-0 flex w-6 justify-center"
                                            : "absolute left-0 top-0 flex w-6 justify-center -bottom-6"
                                    )
                                ),

                                // Event title
                                Node.p(
                                    .class(
                                        event.important ?? false
                                            ? "flex-auto font-medium py-0.5 text-xs leading-5 text-gray-600 dark:text-neutral-300"
                                            : "flex-auto py-0.5 text-xs leading-5 text-gray-600 dark:text-neutral-500"
                                    ),
                                    Node.span(
                                        .class("mr-4"),
                                        .text(event.icon)
                                    ),
                                    .text(event.title)
                                ),

                                // Date
                                Node.time(
                                    .class(
                                        "flex-none py-0.5 text-xs leading-5 text-gray-600 dark:text-neutral-500"
                                    ),
                                    .text(event.dateFormatted)
                                )
                            )
                        }
                    )
                )
            )
        )
    }
}
