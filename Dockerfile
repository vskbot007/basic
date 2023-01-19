FROM python:3.8-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip install pipreqs
CMD ["python", "app.py"]
