FROM ubuntu:18.04
MAINTAINER BadTimes "sfirat.k6@gmail.com"

RUN apt-get update \
    && apt-get install -y python3-pip python3-dev \
    && cd /usr/local/bin \
    && ln -s /usr/bin/python3 python \
    && pip3 install --upgrade pip

COPY data data
COPY app.py requirements.txt ./
RUN pip install -r requirements.txt

EXPOSE 8000
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
