FROM python:3.12.4-alpine
WORKDIR /DevOps
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py app.py
EXPOSE 8000
ENTRYPOINT ["fastapi", "run", "app.py"]
