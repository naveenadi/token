FROM ubuntu:20.04
MAINTAINER Aditya Agarwal, Aditya Prakash

SHELL ["/bin/bash", "-c"]
# replace shell with bash so we can source files
# RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
#     && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
# ENV LANG en_US.utf8

# update the repository sources list
# and install dependencies
RUN apt-get update  && apt-get upgrade -y\
    && apt-get install -y curl \
    && apt-get -y autoclean


# Install languages
RUN apt-get install -y gcc
RUN apt-get install -y g++
RUN apt-get install -y clang


# # nvm environment variables
# ENV NVM_DIR /usr/local/nvm
# ENV NODE_VERSION 14.15.5

# # install nvm
# # https://github.com/creationix/nvm#install-script
# RUN curl --silent -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash

# # install node and npm
# RUN source $NVM_DIR/nvm.sh \
#     && nvm install $NODE_VERSION \
#     && nvm alias default $NODE_VERSION \
#     && nvm use default

# # add node and npm to path so the commands are available
# ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
# ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# # confirm installation
# RUN node -v
# RUN npm -v

