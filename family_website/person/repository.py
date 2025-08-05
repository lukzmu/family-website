from family_website.core.repository import BaseRepository
from family_website.person.dto import Person
from family_website.person.mapper import PersonMapper


class PersonRepository(BaseRepository[Person, PersonMapper]):
    _DATA_PATH = "family_website/data/people.yml"


person_repository = PersonRepository(mapper=PersonMapper)
