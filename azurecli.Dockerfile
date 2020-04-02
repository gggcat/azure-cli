FROM zzzcat/dispshell:python3

#
# AWS-CLI
#
COPY azure-cli-requirements.txt .
RUN pip install --upgrade pip setuptools wheel && \
    pip install -r azure-cli-requirements.txt && \
    echo "*** INSTALLED: azure-cli modules ***"

#
# Docker
# 
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends docker.io && \
    apt-get install -y --no-install-recommends docker-compose && \
    echo "*** INSTALLED: docker & docker tools ***"
