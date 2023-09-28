## Preparation
1. docker build -t <image name> .
2. docker run --rm -it --gpus all --network host <image name> /bin/bash
3. python3 launch.py --no-download-sd-model --do-not-download-clip
5. Save container: docker commit <container hash> <image name>
6. If needed, change Dockerfile to add extensions etc.

stable-diffusion-webui repo here is v1.6.0 as of 28-Sep-2023
