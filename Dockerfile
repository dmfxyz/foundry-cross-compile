## Build foundry within a dockerfile we we can manipulate platform
FROM rust

WORKDIR /opt
RUN git clone https://github.com/gakonst/foundry

CMD cd foundry && cargo build --release