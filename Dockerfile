FROM python:3.12.2

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    libglib2.0-0 \
    libnss3 \
    libgconf-2-4 \
    libfontconfig1 \
    chromium

WORKDIR /usr/workspace

# Copy the dependencies file to the working directory

COPY ./requirements.txt /usr/workspace

# Install Python dependencies
RUN pip install -r requirements.txt





