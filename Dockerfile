FROM python:3.6
MAINTAINER veera "veera.narni232@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
#ENTRYPOINT ["python"]
#CMD ["app.py"]
CMD ["python", "app.py"]
########### my docker file  ###################

FROM python:3.6
LABEL maintainer="sankojipavanchary123@gmail.com"

COPY . /app
WORKDIR /app
EXPOSE 5000  # it just shows in inspect to know which port is enabled for the application
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python","app.py"]
