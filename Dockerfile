FROM python:2.7

RUN apt-get install git -y
RUN pip install simplejson
RUN pip install pika

RUN git clone https://github.com/michelelt/processor
CMD python processor/consumer.py
