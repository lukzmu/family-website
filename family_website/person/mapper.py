from typing import Any, Dict

from family_website.person.dto import Person, SocialMedia


class PersonMapper:
    @staticmethod
    def dict_to_dto(person: Dict[str, Any]) -> Person:
        return Person(
            name=person["name"],
            avatar=person["avatar"],
            title=person["title"],
            social=[
                SocialMedia(
                    name=social["name"],
                    icon=social["icon"],
                    url=social["url"],
                )
                for social in person.get("social", [])
            ],
        )
