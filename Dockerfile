FROM ubuntu:xenial
MAINTAINER seerwright <chris.wright.now@gmail.com>

# Downloads URLs
ENV SOME_URL https://www.somewhere.com/my_download

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update && apt-get -y install aptitude wget unzip make gcc libkrb5-3 libgssapi-krb5-2

# Download ODBC install files & scripts
#RUN cd /tmp && wget -O msodbcsql.tar.gz ${MS_ODBC_URL} && wget -O odbc-fixed.zip ${FIX_SCRIPT_URL}

