#Dockerfile, Image, Container
FROM python:3.10
ADD src/app.py .

RUN pip install Flask

CMD [ "python", "app.py"]
