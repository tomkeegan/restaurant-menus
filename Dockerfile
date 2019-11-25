FROM alpine:latest
WORKDIR /code
RUN apk add --no-cache \
    build-base libffi-dev openssl-dev libxslt \ 
    libxslt-dev git python3-dev && \
    echo -e "requests\ngooglemaps\nscrapy" > requirements.txt && \
    pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r requirements.txt