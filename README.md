## Preparation
1. docker build -t image_name:tag .
2. docker run --rm -it --gpus all --network host image_name:tag /bin/bash
3. python3 launch.py --no-download-sd-model --do-not-download-clip
4. If needed, change Dockerfile to add extensions or run container and install them, then commit to image

stable-diffusion-webui repo here is v1.6.0 as of 28-Sep-2023
