FROM python



RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY flask-app/requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app

CMD ["python","flask-app/hello.py"]
