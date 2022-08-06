# Base64

Implements a simple nif in Rust that uses the [rust-base64](https://github.com/marshallpierce/rust-base64) create.

Uses [Rustler](https://github.com/rusterlium/rustler) project to build the nif.

## Interesting things

- See [`lib/base64.ex`](https://github.com/adamzaninovich/elixir-rust-nif-base64-example/blob/main/lib/base64.ex) for the Elixir implementation.
- See [`native/base64_nif/src/lib.rs`](https://github.com/adamzaninovich/elixir-rust-nif-base64-example/blob/main/native/base64_nif/src/lib.rs) for the Rust implementation.
