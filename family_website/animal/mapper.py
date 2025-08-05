from typing import Any, Dict

from family_website.animal.dto import Animal


class AnimalMapper:
    @staticmethod
    def dict_to_dto(animal: Dict[str, Any]) -> Animal:
        return Animal(
            name=animal["name"],
            avatar=animal["avatar"],
            alive=animal["alive"],
        )
