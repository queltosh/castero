FROM debian
RUN apt-get update && apt-get install -yy python3 python3-pip wget git
ADD https://github.com/xgi/castero/archive/v0.4.2.tar.gz /root
RUN tar -C /root/ -xvzf /root/v0.4.2.tar.gz 
RUN cd /root/castero-0.4.2 && python3 setup.py install
ENTRYPOINT ["castero"]

