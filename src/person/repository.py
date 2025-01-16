from typing import List

import yaml

from person.dto import Person
from person.mapper import PersonMapper


class PersonRepository:
    def __init__(self, data_path: str) -> None:
        self._data_path = data_path

    def get_people_list(self) -> List[Person]:
        with open(self._data_path) as file:
            data = yaml.safe_load(file)
            return [PersonMapper.dict_to_dto(person=person) for person in data["items"]]


person_repository = PersonRepository(data_path="data/people.yml")
