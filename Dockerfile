FROM ubuntu:14.10

MAINTAINER Emmet O'Grady <emmet789@gmail.com>

RUN apt-get update && apt-get install -y jq

ADD remove-orphan-images.sh /remove-orphan-images.sh
RUN chmod +x /remove-orphan-images.sh

CMD /remove-orphan-images.sh
