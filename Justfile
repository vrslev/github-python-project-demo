test *args:
    uv run pytest {{args}}

lint:
    uv run ruff check
    uv run ruff format
