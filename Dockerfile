FROM python:3.12
COPY . ./DevOps
WORKDIR /DevOps
RUN pip3 install -r requirements.txt
CMD ["fastapi", "run", "--port", "80", "app.py"]