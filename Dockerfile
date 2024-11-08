FROM rust:latest

RUN apt-get update && \
    apt-get install -y mingw-w64 && \
    apt-get clean

RUN rustup target add x86_64-pc-windows-gnu && \
    rm -rf /usr/local/cargo/registry && \
    mkdir /usr/local/cargo/registry

WORKDIR /app

CMD ["cargo", "build", "--target", "x86_64-pc-windows-gnu"]
