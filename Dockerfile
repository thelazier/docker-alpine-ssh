FROM alpine:latest

ENV PARAM "-v -n"

RUN apk --update add --no-cache openssh-client bash

CMD bash -c "while true; do ssh ${PARAM}; sleep 5; done;"
