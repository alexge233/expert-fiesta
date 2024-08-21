FROM pytorch/pytorch:2.4.0-cuda11.8-cudnn9-runtime

# Install some basic utilities
RUN apt-get update && apt-get install -y \
    cgroup-tools \
    curl \
    ca-certificates \
    sudo \
    git \
    python3.10


RUN mkdir -p /app/
WORKDIR /app
COPY main.py ./

RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir torch numpy

## Set the default command to python3
CMD ["python3", "./main.py"]
