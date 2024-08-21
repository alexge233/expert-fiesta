# expert-fiesta
PyTorch template App Dockerized using NVDIA's CUDA Docker container

## Install & Setup Docker

https://docs.docker.com/engine/install/

## Install CUDA container toolkit & Configure it

https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html

## Build and Run Docker

```bash
docker build -t torchapp:testing --no-cache . && docker run -it --gpus=all torchapp:testing
```

The image should build, run and not return any assertion errors

