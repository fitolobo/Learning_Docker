#FROM pytorch/pytorch:latest
# Normal image
FROM python:3.8.10

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y \
&& apt-get -y install apt-utils gcc libpq-dev libsndfile-dev

#RUN apt-get -y update
#RUN apt-get -y upgrade
#RUN apt-get install -y ffmpeg

# no funciona cuando quiero usar pydub
RUN pip3 install ffmpeg

# no funciono pyaudio
#RUN apt-get install python-gnuradio-audio-portaudio

RUN apt-get update
RUN apt-get install libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0 -y


RUN pip3 install scikit-learn
RUN pip3 install spicy
RUN pip3 install raiwidgets

RUN apt-get update
RUN apt-get install -y make
RUN pip3 install jupyterlab

RUN pip3 install librosa
RUN pip3 install matplotlib
RUN pip3 install PyAudio
RUN pip3 install torchaudio
RUN pip3 install transformers
RUN pip3 install datasets
RUN pip3 install ipywidgets
RUN pip3 install --upgrade jupyter_client
RUN pip3 install tensorflow
RUN pip3 install keras

CMD ["/bin/bash"]
