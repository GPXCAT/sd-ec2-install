ARG PYTHON=python:3.10.10

# build stage
FROM ${PYTHON} AS build-env

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive && \
    apt install --no-install-recommends --assume-yes \
        wget git build-essential python3-venv python3-pip libgl1 && \
    rm -rf /var/lib/apt/lists/*

RUN adduser -q sduser
USER sduser
WORKDIR /app/stable-diffusion-webui
RUN pip3 install --upgrade pip
RUN git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git /app/stable-diffusion-webui
RUN pip install -r requirements_versions.txt

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

# COPY --from=build-env /venv /venv
COPY --from=build-env /app /app
ENV PATH=/venv/bin:$PATH

ENTRYPOINT [ "python3", "-u", "aniGamerPlus.py" ]
