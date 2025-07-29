```dockerfile
# Usa una imagen base de Python ligera
FROM python:3.9-slim-buster

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requisitos e instala las dependencias
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copia el código de tu aplicación al contenedor
COPY app.py .

# Expone el puerto que la aplicación escuchará (App Runner por defecto espera 8080)
EXPOSE 8080

# Comando para ejecutar la aplicación cuando el contenedor se inicie
CMD ["python", "app.py"]
