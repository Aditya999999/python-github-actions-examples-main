#Dockerfile, Image, Container
FROM python:3.10
ADD src/app.py /src

RUN pip install Flask

CMD [ "python", "src/app.py"]
