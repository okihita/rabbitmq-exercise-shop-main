FROM python:3.13
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Depends on the filename. Change if necessary.
ENV FLASK_APP=main:app

COPY . .

CMD ["python", "main.py"]