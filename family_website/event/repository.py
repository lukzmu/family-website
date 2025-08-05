from family_website.core.repository import BaseRepository
from family_website.event.dto import Event
from family_website.event.mapper import EventMapper


class EventRepository(BaseRepository[Event, EventMapper]):
    _DATA_PATH = "family_website/data/events.yml"

    def get_sorted_items(self) -> list[Event]:
        return sorted(self.get_items(), reverse=True)


event_repository = EventRepository(mapper=EventMapper)
