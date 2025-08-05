import pytest

from family_website.animal.repository import AnimalRepository


@pytest.fixture
def animal_repository():
    def _animal_repository(data_path="dummy_path"):
        return AnimalRepository(data_path=data_path)

    return _animal_repository


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
