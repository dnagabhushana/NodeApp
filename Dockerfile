FROM ibmcom/ace-mq:latest

RUN echo aceuser:passw0rd | chpasswd
COPY mqsc/* /etc/mqm/.
COPY bars_mq /home/aceuser/bars
RUN su - aceuser -c 'ace_compile_bars.sh'
