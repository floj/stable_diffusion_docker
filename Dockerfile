FROM python:3.9
RUN apt-get update && apt-get install -y libgl-dev
RUN mkdir /out
RUN git clone https://github.com/bes-dev/stable_diffusion.openvino.git /opt/stable_diffusion && \
  cd /opt/stable_diffusion && \
  pip install ftfy \
  pip install -r requirements.txt
COPY stable_diffusion /usr/bin/
ENV HOME=/home/stable_diffusion
WORKDIR /out
