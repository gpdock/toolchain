FROM gcc:8

RUN apt-get update && apt-get install -y --no-install-recommends git cmake make lcov valgrind && rm -rf /var/lib/apt/lists/*
RUN git clone --depth 1 --branch release-1.8.1 -q https://github.com/google/googletest.git /googletest
RUN mkdir -p /googletest/build
RUN cd /googletest/build \
  && cmake .. && make && make install \
  && cd / && rm -rf /googletest
