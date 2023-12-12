FROM debian:bullseye-slim

# Install tools
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y git bash perl build-essential texlive-full
RUN apt autoclean

# Create system user
ARG USER GROUP
RUN groupadd -o --gid ${GROUP} docker
RUN useradd -o -m --uid ${USER} --gid ${GROUP} docker
USER ${USER}:${GROUP}

# Change workspace directory
WORKDIR /opt/app
