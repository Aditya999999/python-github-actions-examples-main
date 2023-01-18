#Dockerfile, Image, Container
#FROM python:3.10
#ADD src/app.py .
#ADD src/setup.py /src
#ADD tests/test_app.py /tests

# RUN pip install setuptools os-sys attrs==22.2.0 click==8.1.3 colorama==0.4.6 exceptiongroup==1.1.0 Flask==2.2.2 iniconfig==2.0.0 itsdangerous==2.1.2 Jinja2==3.1.2 MarkupSafe==2.1.1 packaging==23.0 pluggy==1.0.0 pytest==7.2.1 tomli==2.0.1 Werkzeug==2.2.2
#RUN pip install Flask

#CMD [ "python", "./app.py" ]

FROM python:3.8-slim-buster

COPY src/ /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask

EXPOSE 5000

CMD ["python", "app.py"]

