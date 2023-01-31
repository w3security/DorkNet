FROM alpine:3.9
LABEL MAINTAINER @w3security | alerts@log4j.codes

RUN apk update && \
    apk upgrade

RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache

RUN apk add git
RUN git clone https://github.com/w3security/DorkNet.git /tmp/dorknet

WORKDIR /tmp/dorknet

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3", "DorkNet.py"]
