# Learing_Docker
Some docker files for data science working

Cuando necesite encontrar una imagen para construir un contenedor debo:

1) Entrar a docker hub o en su defecto buscar en google, por ejemplo, "docker hub python3".

2) Encontraré una lista de las imágenes oficiales de python docker, generalmente debo seleccionar
aquella que dice "latest" o el mismo nombre de la imagen que buscaba por ejemplo "python3".

3) Para utilizarlas copio el nombre que aparece después de "pull" en un banner al costado derecho de la pantalla.

Pra ejecutar la imagen:
1) Entro a la carpeta donde estoy trabajando, dentro de ella deben estar los archivos "Dockerfile" y "Makefile".
2) Comandos:
  - make build: lee el docker file y lo construye
  - docker images: lista las imagenes
  - make run: entro en la imagen
3) Para construir una nueva imagen necesito modificar el nombre de los archivos en la siguiente sección:
            ```
            # VARIABLES
              REGISTRY_URL=fitolobo
              VERSION=latest
              DOCKER_IMAGE=emotion-recogniton-text
              DOCKER_FILE=Dockerfile
            
            ```
4) Para instalar versiones y paquetes solo debo modificar el Dockerfile con las versiones que requiera, por ejemplo:
      ```
        FROM pytorch/pytorch:latest

        RUN pip3 install transformers==4.4.2

        RUN pip3 install numpy==1.19.4
        RUN pip3 install pandas==1.2.0
        RUN pip3 install scikit-learn==0.24.0

        RUN pip3 install audioread==2.1.9
        RUN pip3 install spicy==0.16.0
        RUN pip3 install joblib==1.0.0

        RUN pip3 install speechbrain==0.5.4

        RUN pip3 install tensorflow==2.4.0


        RUN pip3 install uvicorn==0.13.3
        RUN pip3 install fastapi==0.63.0

        RUN pip3 install eng-to-ipa
        RUN pip3 install textblob

        RUN apt-get update
        RUN apt-get install -y make
        RUN pip3 install jupyterlab

        CMD ["/bin/bash"]
      ```
5) Para correr jupyter-lab: ejecuto dentro de la imagen y copio la última linea (token), debo abrir el localhost 288888
   por ejemplo:
    http://127.0.0.1:8888/lab?token=59f8c59c7bb114843ec8c0b5743658958d0f4b1c3927461d
    El token es: 59f8c59c7bb114843ec8c0b5743658958d0f4b1c3927461d
    
    Abro el local host, cargo el token en el banner y tengo jupyter con las versiones que quiero de python. 
