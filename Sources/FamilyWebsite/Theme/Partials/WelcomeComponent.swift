//
//  Welcome.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

import Plot

struct WelcomeComponent: Component {
    var body: Component {
        Node<HTML.BodyContext>.div(
            .class("px-6 py-24 sm:py-32 lg:px-8"),
            .div(
                .class("mx-auto max-w-2xl text-center"),
                .h2(
                    .class(
                        "text-4xl font-bold tracking-tight text-gray-900 dark:text-neutral-100 sm:text-6xl"
                    ),
                    .div(
                        .class("inline-block pr-4"),
                        "Hello there"
                    ),
                    .div(
                        .class(
                            "inline-block animate-[wiggle_2s_ease-in-out_infinite]"
                        ),
                        "👋🏻"
                    )
                ),
                .p(
                    .class(
                        "mt-6 text-lg leading-8 text-gray-600 dark:text-neutral-500"
                    ),
                    "Welcome to our ",
                    .strong("Family"),
                    " website."
                )
            )
        )
    }
}
