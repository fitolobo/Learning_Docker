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
