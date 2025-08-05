import pytest

from family_website.person.mapper import PersonMapper
from family_website.person.repository import PersonRepository


@pytest.fixture
def person_repository():
    return PersonRepository(mapper=PersonMapper)


@pytest.fixture
def person_data():
    return {
        "items": [
            {
                "name": "Łukasz",
                "avatar": "lukasz.png",
                "title": "Python Engineer",
                "social": [
                    {
                        "name": "GitHub",
                        "url": "https://github.com/zmudzinski-me",
                        "icon": "github",
                    }
                ],
            },
            {
                "name": "Anna",
                "avatar": "ania.png",
                "title": "Animal Sciences PhD",
            },
        ]
    }
