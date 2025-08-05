from typing import List

import yaml

from family_website.animal.dto import Animal
from family_website.animal.mapper import AnimalMapper


class AnimalRepository:
    def __init__(self, data_path: str) -> None:
        self._data_path = data_path

    def get_animals_list(self) -> List[Animal]:
        with open(self._data_path) as file:
            data = yaml.safe_load(file)

            animals = [AnimalMapper.dict_to_dto(animal=animal) for animal in data["items"]]

            return sorted(animals, key=lambda x: (-x.alive, x.name))


animal_repository = AnimalRepository(data_path="family_website/data/animals.yml")
