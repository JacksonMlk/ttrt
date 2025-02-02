FROM python:3.8.3-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1   
 
RUN pip install --upgrade pip

COPY ./requirements.txt /usr/src/app
RUN pip install -r requirements.txt


COPY . /usr/src/app

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
#ENTRYPOINT python manage.py runserver


