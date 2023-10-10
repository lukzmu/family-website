from datetime import datetime
from typing import Any, Dict

from event.dto import Event


class EventMapper:
    @staticmethod
    def dict_to_dto(event: Dict[str, Any]) -> Event:
        return Event(
            title=event["title"],
            icon=event["icon"],
            date=datetime.strptime(event["date"], "%Y.%m.%d").date(),
            important=event.get("important", False),
        )
