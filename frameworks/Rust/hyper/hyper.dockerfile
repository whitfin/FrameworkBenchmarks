FROM rust:latest

ADD ./ /hyper
WORKDIR /hyper

RUN cargo clean
RUN RUSTFLAGS="-C target-cpu=native" cargo build --release

CMD ["./target/release/hyper-techempower"]
