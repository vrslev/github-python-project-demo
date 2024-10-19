import pytest

from github_python_project_demo.main import main


def test_main_mentions_star_wars(capsys: pytest.CaptureFixture[str]) -> None:
    main()
    captured_stdout = capsys.readouterr().out
    assert "Star Wars: The Rise of Skywalker" in captured_stdout
