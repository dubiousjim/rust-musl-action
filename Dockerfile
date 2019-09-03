FROM liuchong/rustup:1.37.0-musl

LABEL name="rust-musl-stable"
LABEL version="1.0.0"
LABEL repository="https://github.com/davidgraeff/rust-musl-action"
LABEL homepage="https://github.com/davidgraeff/rust-musl-action"
LABEL maintainer="David Graeff"

LABEL com.github.actions.name="Rust MUSL Builder Slim"
LABEL com.github.actions.description="Provides a Rust MUSL environment"
LABEL com.github.actions.icon="settings"
LABEL com.github.actions.color="orange"

ENV BUILD_DIR=/build \
    OUTPUT_DIR=/output \
    RUST_BACKTRACE=1 \
    BUILD_TARGET=x86_64-unknown-linux-musl \
    OPENSSL_LIB_DIR=/usr/local/ssl/lib \
    OPENSSL_INCLUDE_DIR=/usr/local/ssl/include \
    OPENSSL_STATIC=1

RUN mkdir -p $BUILD_DIR && mkdir -p $OUTPUT_DIR
WORKDIR $BUILD_DIR

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
