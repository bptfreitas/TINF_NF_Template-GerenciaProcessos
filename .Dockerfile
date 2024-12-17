FROM ubuntu:22.04

# just for tz ...
RUN apt-get update && \
    apt-get install -yq tzdata sudo wget && \
    ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

WORKDIR /root

ENV PATH="$PATH:/usr/games"

ENV DISPLAY=:0

ENV TZ="America/New_York"

ARG DEBIAN_FRONTEND=noninteractive

COPY .tests/ .tests/

COPY .corretor corretor

RUN chmod +x ./corretor

COPY .grade_student.sh grade_student.sh

RUN chmod +x ./grade_student.sh

COPY trabalho.sh /root/

RUN chmod +x ./trabalho.sh

# scripts das questoes

COPY questao*.sh /root/ 

RUN chmod +x ./questao*.sh 

RUN ls -la

RUN echo $PATH

RUN which nohup

CMD ./grade_student.sh & sleep infinity 
