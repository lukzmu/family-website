import json


class TestPersonRepository:
    def test_person_repository_constructor(self, person_repository):
        data_path = "data/people.yml"
        repository = person_repository(data_path=data_path)

        assert repository._data_path == data_path

    def test_people_list_returns_correct_person_count(self, person_repository, person_data, mocker):
        mocked_data = mocker.mock_open(read_data=json.dumps(person_data))
        mocker.patch("builtins.open", mocked_data)

        result = person_repository().get_people_list()

        assert len(result) == 2
