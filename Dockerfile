FROM python:2.7

RUN apt-get install git -y
RUN pip install --upgrade pip
RUN pip install simplejson
RUN pip install pika
RUN pip install --egg mysql-connector-python-rf

RUN git clone https://github.com/michelelt/processor
RUN rabbitmq-plugins enable rabbitmq_management
RUN rabbitmqadmin declare queue name=coda durable=true
CMD python processor/consumer.py

##
