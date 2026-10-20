FROM python:3.12-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir .
RUN useradd --create-home appuser
USER appuser
CMD ["python", "-m", "flask", "--app", "app.main", "run", "--host", "0.0.0.0"]
