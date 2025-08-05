import pytest

from family_website.animal.mapper import AnimalMapper
from family_website.animal.repository import AnimalRepository


@pytest.fixture
def animal_repository():
    return AnimalRepository(mapper=AnimalMapper)


@pytest.fixture
def animal_data():
    return {
        "items": [
            {
                "name": "Stefa",
                "avatar": "stefa.png",
                "alive": False,
            },
            {
                "name": "Bingo",
                "avatar": "bingo.png",
                "alive": False,
            },
            {
                "name": "Wifi",
                "avatar": "wifi.png",
                "alive": True,
            },
            {
                "name": "Vader",
                "avatar": "vader.png",
                "alive": True,
            },
        ]
    }
