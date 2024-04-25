# Usar una imagen de Python específica
FROM python:3.12.2-slim-buster

# Crear un directorio de trabajo
WORKDIR /app

# Copiar solo los archivos necesarios para instalar las dependencias primero
COPY requirements.txt .

# Instalar las dependencias
RUN pip install -r requirements.txt

# Copiar el resto de los archivos de la aplicación
COPY ./app .

# Exponer el puerto 5000
EXPOSE 5000

# Ejecutar la aplicación
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]