FROM      python:3
RUN       mkdir -p /app
WORKDIR   /app
COPY      requirements.txt .
COPY      payment.py  .
COPY      rabbitmq.py .
COPY      payment.ini .
RUN       pip3 install -r requirements.txt
CMD       uwsgi --ini payment.ini
