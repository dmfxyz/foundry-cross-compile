## Build foundry within a dockerfile so we can attempt manipulate platform
FROM rust

WORKDIR /opt
RUN git clone https://github.com/gakonst/foundry
RUN cd foundry && cargo build --release

CMD ls foundry/target 