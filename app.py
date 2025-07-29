
from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1>Hola Mundo desde AWS App Runner!</h1><p>¡Despliegue exitoso!</p>'

if __name__ == '__main__':
    # App Runner espera que tu aplicación escuche en el puerto definido por la variable de entorno 'PORT'.
    # Por defecto, App Runner usa el puerto 8080.
    port = int(os.environ.get('PORT', 8080))
    app.run(debug=True, host='0.0.0.0', port=port)
