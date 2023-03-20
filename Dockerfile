ARG PYTHON=python:3.10.10

# build stage
FROM ${PYTHON} AS build-env

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive && \
    apt install --no-install-recommends --assume-yes \
        wget git build-essential python3-venv python3-pip libgl1 && \
    rm -rf /var/lib/apt/lists/*

RUN adduser -q sduser && mkdir /venv && chown sduser.sduser /venv
USER sduser
WORKDIR /app/stable-diffusion-webui

RUN python3 -m venv /venv
ENV PATH=/venv/bin:$PATH

RUN pip3 install --upgrade pip
RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git /app/stable-diffusion-webui
RUN pip install -r requirements_versions.txt
RUN PIP_NO_CACHE_DIR=1 pip install torch==1.13.1+cu117 torchvision --extra-index-url https://download.pytorch.org/whl/cu117

# final stage
FROM ${PYTHON}

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive && \
    apt install --no-install-recommends --assume-yes \
        wget git aria2 python3-venv python3-pip libgl1 && \
    rm -rf /var/lib/apt/lists/*

RUN adduser -q sduser
USER sduser
WORKDIR /app/stable-diffusion-webui

COPY --from=build-env /venv /venv
COPY --from=build-env /app /app
ENV PATH=/venv/bin:$PATH

ENV CLI_ARGS=""
EXPOSE 7860
ENTRYPOINT [ "./webui.sh", "--skip-torch-cuda-test" ]
