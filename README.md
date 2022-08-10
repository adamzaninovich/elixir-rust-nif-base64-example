# Base64

Implements a simple nif in Rust that uses the [rust-base64](https://github.com/marshallpierce/rust-base64) crate.

Uses the [Rustler](https://github.com/rusterlium/rustler) project to build the nif.

## Interesting things

- See [`lib/base64.ex`](https://github.com/adamzaninovich/elixir-rust-nif-base64-example/blob/main/lib/base64.ex) for the Elixir implementation.
- See [`native/base64_nif/src/lib.rs`](https://github.com/adamzaninovich/elixir-rust-nif-base64-example/blob/main/native/base64_nif/src/lib.rs) for the Rust implementation.

## To Compile

1. Make sure you have a recent version of Rust. (1.62.1 as of publishing)
  ``` sh
  asdf plugin-add rust
  asdf install rust stable
  asdf global rust stable
  ```

2. Clone this repo
  ``` sh
  git clone https://github.com/adamzaninovich/elixir-rust-nif-base64-example.git
  cd elixir-rust-nif-base64-example/
  ```
  
3. Compile
  ``` sh
  mix deps.get
  mix compile
  ```

4. Try it out (`iex -S mix`)
  ``` elixir
  iex(1)> encoded = Base64.encode("hello")
  "aGVsbG8="
  iex(2)> decoded = Base64.decode(encoded)
  "hello"
  ```
  
5. Run the tests
  ``` sh
  mix test
  ....

  Finished in 0.02 seconds (0.00s async, 0.02s sync)
  2 doctests, 2 tests, 0 failures
  ```

## To use in another project

Import this package:
  ``` elixir
  # add to mix.exs deps
  {:base64, git: "https://github.com/adamzaninovich/elixir-rust-nif-base64-example.git", branch: "main"}
  ```
