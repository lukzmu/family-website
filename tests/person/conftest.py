import pytest
from person.repository import PersonRepository


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
                "social_media": [
                    {
                        "name": "GitHub",
                        "icon": "github",
                        "url": "https://github.com/divinebanana",
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
