FROM docker.io/library/rust:1.93-slim-bullseye

COPY . /srv/oxidicom
WORKDIR /srv/oxidicom
RUN cargo build --release --locked

CMD ["/srv/oxidicom/target/release/oxidicom"]
