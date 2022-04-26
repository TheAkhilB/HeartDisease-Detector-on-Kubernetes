FROM ubuntu:latest

RUN apt-get update && apt-get install -y python && apt-get install -y python3-pip python3-dev && cd /usr/local/bin && ln -s /usr/bin/python3 python && pip3 install flask

COPY HeartPrediction_AKhil .

RUN pip install -r requirements.txt

RUN pip install -U scikit-learn scipy matplotlib

EXPOSE 5500

CMD ["python","app.py"]

