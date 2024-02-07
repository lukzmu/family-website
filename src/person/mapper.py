from typing import Any, Dict

from person.dto import Person, SocialMedia


class PersonMapper:
    @staticmethod
    def dict_to_dto(person: Dict[str, Any]) -> Person:
        return Person(
            name=person["name"],
            avatar=person["avatar"],
            title=person["title"],
            social_media=[
                SocialMedia(
                    name=social_media["name"],
                    icon=social_media["icon"],
                    url=social_media["url"],
                )
                for social_media in person.get("social_media", [])
            ],
        )
