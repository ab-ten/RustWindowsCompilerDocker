@echo off
if not exist %~dp0\.cargo-reg-cache (
  mkdir %~dp0\.cargo-reg-cache
)
docker run --rm -it --mount type=bind,source=%~dp0\.cargo-reg-cache,target=/usr/local/cargo/registry -v .:/app rust-cross-windows %*
