FROM python

RUN apt-get install git -y
RUN pip install pika
run pip install simplejson

RUN git clone https://github.com/michelelt/processor
#RUN python processor/consumer.py
