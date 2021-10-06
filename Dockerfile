# image
FROM python:3.8-slim-buster

# porta
EXPOSE 1024

# instalar requirements do pip
COPY requirements.txt .
RUN python -m pip install -r requirements.txt

#criar e copiar arquivos
WORKDIR /app
COPY . /app

# executar projeto
CMD ["gunicorn", "--bind", "0.0.0.0:1024", "trabalhoinfra.wsgi"]
