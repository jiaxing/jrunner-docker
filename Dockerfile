FROM java:8

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    bash \
  && rm -rf /var/lib/apt/lists/*

VOLUME ["/app", "/data"]
WORKDIR /app

CMD ["/bin/bash"]
