FROM alpine:3.11

# ENV VERSION="1.29.2547.95"
ARG PRITUNL_VERSION="*"

WORKDIR /code

COPY requirements.txt /code/

RUN apk --no-cache add --update go git bzr wget py3-pip \ 
    gcc python python-dev musl-dev linux-headers libffi-dev openssl-dev \
    py3-setuptools openssl procps ca-certificates make
    
RUN pip3 install --upgrade pip 



RUN pip3 install -r requirements.txt \
    ##&& pip install -r requirements.txt 
    && pip3 install --upgrade --no-deps --force-reinstall git+https://github.com/openai/whisper.git
    #&& python setup.py install \



