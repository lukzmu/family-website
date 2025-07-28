//
//  Theme.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

import Plot
import Publish

extension Theme {
    public static var core: Self {
        Theme(
            htmlFactory: CoreHTMLFactory(),
            resourcePaths: []
        )
    }
}

private struct CoreHTMLFactory<Site: Website>: HTMLFactory {
    func makeIndexHTML(
        for index: Publish.Index,
        context: Publish.PublishingContext<Site>
    ) throws -> Plot.HTML {
        HTML(
            .head(
                .encoding(.utf8),
                .title(context.site.name),
                .description(context.site.description),
                .viewport(.accordingToDevice),
                .twitterCardType(.summaryLargeImage),
                .meta(.name("og:image"), .content("/Images/twitter_card.png")),
                .stylesheet("/animations.css"),
                .script(.src("https://cdn.tailwindcss.com")),
            ),
            .body(
                .class("bg-white dark:bg-neutral-950"),
                .main(
                    .div(
                        .class("container mx-auto"),
                        .component(WelcomeComponent()),
                        .component(
                            PeopleComponent(from: "Resources/Data/people.yml")
                        ),
                        .component(
                            AnimalsComponent(from: "Resources/Data/animals.yml")
                        ),
                        .component(
                            EventsComponent(from: "Resources/Data/events.yml")
                        ),
                        .component(FooterComponent()),
                    )
                )
            )
        )
    }

    func makeSectionHTML(
        for section: Publish.Section<Site>,
        context: Publish.PublishingContext<Site>
    ) throws -> Plot.HTML {
        // This theme offers only Landing page, but Publish requires this template
        HTML()
    }

    func makeItemHTML(
        for item: Publish.Item<Site>,
        context: Publish.PublishingContext<Site>
    ) throws -> Plot.HTML {
        // This theme offers only Landing page, but Publish requires this template
        HTML()
    }

    func makePageHTML(
        for page: Publish.Page,
        context: Publish.PublishingContext<Site>
    ) throws -> Plot.HTML {
        // This theme offers only Landing page, but Publish requires this template
        HTML()
    }

    func makeTagListHTML(
        for page: Publish.TagListPage,
        context: Publish.PublishingContext<Site>
    ) throws -> Plot.HTML? { nil }

    func makeTagDetailsHTML(
        for page: Publish.TagDetailsPage,
        context: Publish.PublishingContext<Site>
    ) throws -> Plot.HTML? { nil }
}
