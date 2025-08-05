from typing import Any, Dict

from family_website.core.mapper import BaseMapper
from family_website.person.dto import Person, SocialMedia


class PersonMapper(BaseMapper[Person]):
    @staticmethod
    def dict_to_dto(item: Dict[str, Any]) -> Person:
        return Person(
            name=item["name"],
            avatar=item["avatar"],
            title=item["title"],
            social=[
                SocialMedia(
                    name=social["name"],
                    icon=social["icon"],
                    url=social["url"],
                )
                for social in item.get("social", [])
            ],
        )
