# Attempting to cross compile foundry to M1 compatible binary from an intel mac

### Build the normal docker image and x86 binary
1. `docker build -t foundry-compile .`
2. `mkdir target`
3. `docker run -v "$PWD/target:/opt/foundry/target" foundry-compile`

Binary in `$PWD/target/release/forge` should work on x86

---
### Build the docker image targeting the linux/arm64 platform
1. `docker buildx build --platform linux/arm64 -t foundry-compile-m1 .`
2. `mkdir target` (if you haven't already)
3. `docker run -v "$PWD/target:/opt/foundry/target" foundry-compile-m1`

Binary in `$PWD/target/release/forge` should hopefully work on M1?



