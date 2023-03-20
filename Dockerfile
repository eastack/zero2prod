FROM rust:1.68.0

RUN apt update && apt install lld clang -y

WORKDIR /app
COPY . .

ENV SQLX_OFFLINE true
ENV APP_ENVIRONMENT production
RUN cargo build --release

ENTRYPOINT ["./target/release/zero2prod"]