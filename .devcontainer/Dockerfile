FROM mcr.microsoft.com/devcontainers/python:3.12

ARG USERNAME
ARG USER_UID
ARG USER_GID

ENV DEBIAN_FRONTEND=nointeractive \
    LANG=ja_JP.UTF-8

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl \
    apt-transport-https \
    libarchive-tools \
    ca-certificates \
    git \
    vim

RUN echo "syntax on\n:set encoding=utf-8 \n:set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8" > /home/$USERNAME/.vimrc 
# Update existing user
RUN groupmod --gid $USER_GID $USERNAME \
    && usermod --uid $USER_UID --gid $USER_GID $USERNAME \
    && chown -R $USER_UID:$USER_GID /home/$USERNAME

# Create the user
# RUN groupadd --gid $USER_GID $USERNAME
# RUN useradd --uid $USER_UID --gid $USER_GID -m $USERNAME


RUN apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME


# ********************************************************
# * Anything else you want to do like clean up goes here *
# ********************************************************

# [Optional] Set the default user. Omit if you want to keep the default as root.
USER $USERNAME
RUN sudo chsh -s "$(which zsh)"

