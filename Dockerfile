FROM gcc:9

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    make lcov valgrind libgoogle-glog-dev gdb libgtest-dev libgmock-dev \
    && rm -rf /var/lib/apt/lists/*
