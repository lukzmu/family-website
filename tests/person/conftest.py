import pytest

from family_website.person.repository import PersonRepository


@pytest.fixture
def person_repository():
    def _person_repository(data_path="dummy_path"):
        return PersonRepository(data_path=data_path)

    return _person_repository


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
