from family_website.core.repository import BaseRepository
from family_website.event.dto import Event
from family_website.event.mapper import EventMapper


class EventRepository(BaseRepository[Event, EventMapper]):
    _DATA_PATH = "family_website/data/events.yml"

    def get_items(self) -> list[Event]:
        items = super().get_items()
        return sorted(items, reverse=True)


event_repository = EventRepository(mapper=EventMapper)
