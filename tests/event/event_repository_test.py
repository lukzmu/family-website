import json


class TestEventRepository:
    def test_event_repository_constructor(self, event_repository):
        data_path = "data/events.yml"
        repository = event_repository(data_path=data_path)

        assert repository._data_path == data_path

    def test_event_repository_returns_correct_event_count(
        self, event_repository, event_data, mocker
    ):
        mocked_data = mocker.mock_open(read_data=json.dumps(event_data))
        mocker.patch("builtins.open", mocked_data)

        result = event_repository().get_event_list()

        assert len(result) == 2
        assert result[0].title == "Anna and Łukasz get married"
