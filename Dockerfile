FROM python

RUN apt-get install git -y
RUN pip install pika

RUN git clone https://github.com/michelelt/processor
RUN python processor/consumer.py
