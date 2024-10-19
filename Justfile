lint:
    uv run ruff check
    uv run ruff format

test *args:
    uv run pytest {{args}}

run:
    uv run github_python_project_demo

publish:
    rm -rf dist
    uv build
    uv publish --token $PYPI_TOKEN
