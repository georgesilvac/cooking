FROM python:3.12-slim

WORKDIR /app

# Install Poetry
RUN pip install poetry

# Copy dependency files first
# (separate layer — only rebuilds if dependencies change)
COPY pyproject.toml poetry.lock ./

# Poetry inside Docker does not need a virtual environment
RUN poetry config virtualenvs.create false \
    && poetry install --no-root

# Copies the application code
COPY ./app ./app
COPY ./alembic ./alembic
COPY alembic.ini ./

EXPOSE 8000

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
