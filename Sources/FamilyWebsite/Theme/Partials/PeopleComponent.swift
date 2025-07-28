//
//  People.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

import Plot

struct PeopleComponent: Component {
    let people: [Person]

    init(from path: String) {
        self.people = try! YamlLoader.load(for: Person.self, resource: path)
    }

    var body: Component {
        Node.ul(
            .attribute(named: "role", value: "list"),
            .class(
                "grid xl:grid-cols-[repeat(auto-fit,_20%)] m-auto mt-20 justify-center gap-2"
            ),
            .group(
                people.map { person in
                    Node.li(
                        .class(
                            "col-span-1 flex flex-col divide-y divide-neutral-200 rounded-lg bg-white dark:bg-neutral-900 text-center shadow dark:hover:bg-neutral-800 hover:bg-neutral-100 transition ease-in-out duration-300"
                        ),
                        Node.div(
                            .class("flex flex-1 flex-col p-8"),
                            Node.img(
                                .class(
                                    "mx-auto h-32 w-32 flex-shrink-0 rounded-lg"
                                ),
                                .src("/images/people/\(person.avatar)"),
                                .alt("")
                            ),
                            Node.h3(
                                .class(
                                    "mt-6 text-lg font-medium text-neutral-900 dark:text-neutral-100"
                                ),
                                .text(person.name)
                            ),
                            Node.dl(
                                .class(
                                    "mt-1 flex flex-grow flex-col justify-between"
                                ),
                                Node.dt(.class("sr-only"), .text("Title")),
                                Node.dd(
                                    .class(
                                        "text-sm text-neutral-600 dark:text-neutral-500"
                                    ),
                                    .text(person.title)
                                ),
                            )
                        )
                    )
                }
            )
        )
    }
}
