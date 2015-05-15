FROM alpine
RUN apk update && apk add openjdk7-jre-base bash coreutils

ADD run.sh https://github.com/downloads/blangel/wrk/wrk-latest.tar.gz  /

RUN chmod +x /run.sh ; \
	mkdir ~/.wrk ; \
	mkdir /opt && \
	cd /opt && \
	tar -xvzf /wrk-latest.tar.gz

ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/
ENV PATH=$PATH:$JAVA_HOME/bin:/opt/wrk/bin
ENV WRK_HOME=/opt/wrk

ADD cacerts /usr/lib/jvm/java-1.7-openjdk/jre/lib/security/cacerts

ENTRYPOINT [ "/run.sh" ]
