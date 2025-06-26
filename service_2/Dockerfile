FROM python:3.11-slim

RUN pip install uv flask

WORKDIR /app
COPY . .

EXPOSE 8002

CMD ["uv", "run", "app.py"]
