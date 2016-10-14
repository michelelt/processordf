FROM python:2.7

RUN apt-get install git -y
RUN pip install pika
RUN pip install simplejson


RUN git clone https://github.com/michelelt/processor
RUN python processor/consumer.py
