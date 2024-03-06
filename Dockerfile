FROM alpine:3.11

# ENV VERSION="1.29.2547.95"
# ARG PRITUNL_VERSION="*"

WORKDIR /code

COPY requirements.txt /code/

RUN apk --no-cache add --update g++ git python3-dev wget py3-pip \ 
    gcc python3 inux-headers libffi-dev openssl-dev \
    py3-setuptools openssl ca-certificates make python3-dev
    
RUN pip3 install --upgrade pip 



RUN pip3 install -r requirements.txt \
    ##&& pip install -r requirements.txt 
    && pip3 install git+https://github.com/openai/whisper.git
    #&& python setup.py install \



