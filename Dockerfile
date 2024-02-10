FROM python:3.12.2

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    libglib2.0-0 \
    libnss3 \
    libgconf-2-4 \
    libfontconfig1 \
    chromium

RUN wget https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/2.27.0/allure-commandline-2.27.0.zip && \
    unzip -u allure-commandline-2.27.0.zip && \
    rm allure-commandline-2.27.0.zip

WORKDIR /usr/workspace

# Copy the dependencies file to the working directory

COPY ./requirements.txt /usr/workspace

# Install Python dependencies
RUN pip install -r requirements.txt





