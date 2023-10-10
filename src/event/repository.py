from typing import List

import yaml
from event.dto import Event
from event.mapper import EventMapper


class EventRepository:
    def __init__(self, data_path: str) -> None:
        self._data_path = data_path

    def get_event_list(self) -> List[Event]:
        with open(self._data_path) as file:
            data = yaml.safe_load(file)
            events = [EventMapper.dict_to_dto(event=event) for event in data["items"]]
            events.sort(reverse=True)
            return events


event_repository = EventRepository(data_path="data/events.yml")
