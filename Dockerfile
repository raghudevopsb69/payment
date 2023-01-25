FROM      python:3
COPY      payment.ini payment.py requirements.txt rabbitmq.py /
RUN       pip3 install -r requirements.txt
ENTRYPOINT ["uwsgi", "--ini", "payment.ini"]

