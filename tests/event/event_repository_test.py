import json

from family_website.event.mapper import EventMapper
from family_website.event.repository import EventRepository


class TestEventRepository:
    def test_event_repository_constructor(self, event_repository):
        repository = EventRepository(mapper=EventMapper)

        assert repository._mapper == EventMapper

    def test_event_repository_returns_correct_event_count(self, event_repository, event_data, mocker):
        mocked_data = mocker.mock_open(read_data=json.dumps(event_data))
        mocker.patch("builtins.open", mocked_data)

        result = event_repository.get_items()

        assert len(result) == 2
        assert result[0].title == "Anna and Łukasz get married"
