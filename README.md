# Base64

Implements a simple nif in Rust that uses the [rust-base64](https://github.com/marshallpierce/rust-base64) create.

Uses the [Rustler](https://github.com/rusterlium/rustler) project to build the nif.

## Interesting things

- See [`lib/base64.ex`](https://github.com/adamzaninovich/elixir-rust-nif-base64-example/blob/main/lib/base64.ex) for the Elixir implementation.
- See [`native/base64_nif/src/lib.rs`](https://github.com/adamzaninovich/elixir-rust-nif-base64-example/blob/main/native/base64_nif/src/lib.rs) for the Rust implementation.

## To use

1. Import this package:
  ``` elixir
  // add to mix.exs deps
  {:base64, path: ".../base64"}
  ```

2. In your project or in an `iex -S mix` session:
  ``` elixir
  iex(1)> encoded = Base64.encode("hello")
  "aGVsbG8="
  iex(2)> decoded = Base64.decode(encoded)
  "hello"
  ```
