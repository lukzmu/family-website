from typing import List

from family_website.animal.dto import Animal
from family_website.animal.mapper import AnimalMapper
from family_website.core.repository import BaseRepository


class AnimalRepository(BaseRepository[Animal, AnimalMapper]):
    _DATA_PATH = "family_website/data/animals.yml"

    def get_items(self) -> List[Animal]:
        items = super().get_items()
        return sorted(items, key=lambda x: (-x.alive, x.name))


animal_repository = AnimalRepository(mapper=AnimalMapper)
