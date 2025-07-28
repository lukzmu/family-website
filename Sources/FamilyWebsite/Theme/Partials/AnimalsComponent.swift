//
//  Animals.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

import Plot

struct AnimalsComponent: Component {
    let animals: [Animal]

    init(from path: String) {
        self.animals = try! YamlLoader.load(for: Animal.self, resource: path)
            .sorted {
                if $0.alive == $1.alive {
                    return $0.name.localizedCompare($1.name)
                        == .orderedAscending
                }
                return $0.alive && !$1.alive
            }
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
                            .text("Animals")
                        ),
                        Node.p(
                            .class(
                                "mt-6 text-lg leading-8 text-gray-600 dark:text-neutral-500"
                            ),
                            .text("Our beloved life companions.")
                        )
                    )
                ),

                Node.ul(
                    .attribute(named: "role", value: "list"),
                    .class(
                        "mx-auto mt-20 grid max-w-2xl grid-cols-2 gap-x-8 gap-y-16 text-center sm:grid-cols-3 md:grid-cols-4 lg:mx-0 lg:max-w-none lg:grid-cols-5"
                    ),
                    .group(
                        animals.map { animal in
                            Node.li(
                                animal.alive
                                    ? Node.span(
                                        .class("relative inline-block"),
                                        Node.img(
                                            .class(
                                                "mx-auto h-24 w-24 rounded-full hover:scale-105 hover:rotate-[10deg] transition"
                                            ),
                                            .src(
                                                "/Images/Animals/\(animal.avatar)"
                                            ),
                                            .alt(animal.name)
                                        ),
                                        Node.span(
                                            .class(
                                                "absolute right-1 top-1 block h-4 w-4 rounded-full bg-green-400 ring-2 ring-white dark:ring-neutral-950"
                                            )
                                        )
                                    )
                                    : Node.img(
                                        .class(
                                            "mx-auto h-24 w-24 rounded-full grayscale hover:scale-105 hover:rotate-[10deg] transition"
                                        ),
                                        .src(
                                            "/Images/Animals/\(animal.avatar)"
                                        ),
                                        .alt(animal.name)
                                    ),

                                Node.h3(
                                    .class(
                                        "mt-2 text-base leading-7 tracking-tight text-gray-900 dark:text-neutral-500"
                                    ),
                                    .text(animal.name)
                                )
                            )
                        }
                    )
                )
            )
        )
    }
}
